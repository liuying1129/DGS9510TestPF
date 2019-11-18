unit UDM;

interface

uses
  SysUtils, Classes, CPort,Dialogs,Windows{gettickcount},Forms{application},
  StrUtils{rightstr}, DB, ADODB,Inifiles;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
    function SendDate(AStr:string):boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

TYPE
  TRrcDGS9510=RECORD {DGS9510�����ݼ�¼}
  OutU_UV,OutU_VW,OutU_WU,OutU_U,OutU_V,OutU_W:word;//�����ѹ
  OutA_U,OutA_V,OutA_W:Double;//�������
  ActP_U,ActP_V,ActP_W,ActP_Total:Double;//�й�����
  ReactP_U,ReactP_V,ReactP_W,ReactP_Total:Double;//�޹�����
  PF_U,PF_V,PF_W,PF_Avg:Double;//��������
  PS_U,PS_V,PS_W:integer;//����
  PS_HZ:Double;//����Ƶ��
  Exc_V,Exc_A:integer;//���ŵ�ѹ/����
  CT_Rate:word;//CT���
  HZ_Specified:Double;//�Ƶ��
  U_Specified:word;//���ѹ
  ActP_Specified:word;//�����
END;
  
const
  //EQUIP_ADDR=#$01;
  FUNC_CODE_READ_REGISTER=#$03;
  FUNC_CODE_UNKNOW=#$04;
  FUNC_CODE_WRITE_SWITCH=#$05;
  FUNC_CODE_WRITE_REGISTER=#$06;
    
var
  DM: TDM;

  RrcDGS9510:TRrcDGS9510;
  ifBusy:boolean;//�ѽ��ջ�ʱ���ܷ�����һ��ָ��
  RFM:STRING;
  operator_id:string;
  operator_name:string;
  LisConn:string;
  
function CRC16(AStr:ShortString):ShortString;stdcall;external 'LYFunction.dll';
procedure WriteLog(const ALogStr: Pchar);stdcall;external 'LYFunction.dll';
function ByteToReal(AByte1,AByte2,AByte3,AByte4:byte):single;stdcall;external 'LYFunction.dll';
function RealTo4Byte(AReal:single):Pchar;stdcall;external 'LYFunction.dll';
FUNCTION Decode2Byte(S:STRING):Word;
FUNCTION Decode4Byte(S:STRING):Cardinal;
FUNCTION Encode2Byte(w:word):STRING;
function TryStrToFloatExt(const pSourStr:Pchar; var Value: Double): Boolean;stdcall;external 'LYFunction.dll';
function MakeDBConn:boolean;
function ShowOptionForm(const pCaption,pTabSheetCaption,pItemInfo,pInifile:Pchar):boolean;stdcall;external 'OptionSetForm.dll';
function ExecSQLCmd(AConnectionString:string;ASQL:string):integer;
function ScalarSQLCmd(AConnectionString:string;ASQL:string):string;

implementation

uses UfrmMain;

{$R *.dfm}

PROCEDURE WAITBUSY(T:byte);
var currenttime:longword;
begin
    currenttime:=gettickcount() div 1000;
    while((gettickcount() div 1000)<(currenttime+T)) and ifBusy do
    begin
        application.ProcessMessages;
    end;
    ifBusy:=false;
end;

FUNCTION Decode2Byte(S:STRING):Word;
begin
  result:=0;
  if length(s)<>2 then exit;

  result:=256*ord(s[1])+ord(s[2]);
end;

FUNCTION Decode4Byte(S:STRING):Cardinal;
begin
  result:=0;
  if length(s)<>4 then exit;

  result:=ord(s[1])*16777216+ord(s[2])*65536+ord(s[3])*256+ord(s[4]);
end;

FUNCTION Encode2Byte(w:word):STRING;
var
  ss:string;
begin
  ss:=format('0000'+'%.x',[w]);
  ss:=rightstr(ss,4);
  result:=chr(strtoint('$'+copy(ss,1,2)))+chr(strtoint('$'+copy(ss,3,2)));
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  ifBusy:=false;//������ʼ��
  RFM:='';//������ʼ��
  
  MakeDBConn;
end;

function TDM.SendDate(AStr: string):boolean;
var
  iReadDataNum:integer;
begin
  result:=false;

  if not frmMain.ComPort1.Connected then exit;
  if length(AStr)<2 then exit;

  iReadDataNum:=Decode2Byte(COPY(AStr,length(AStr)-1,2));
  
  frmMain.ComDataPacket1.StartString:=AStr[1];
  frmMain.ComDataPacket1.StopString:='';
  frmMain.ComDataPacket1.Size:=5+iReadDataNum*2;//5�ǹ̶�����(1�ֽڵ�ַ,1�ֽڹ�����,1�ֽ����ݳ���,2�ֽ�CRC);1�Ƕ�ȡ1������(1*2���ֽ�)
  if AStr[2]=#6 then frmMain.ComDataPacket1.Size:=8;
  ifBusy:=true;
  RFM:='';
  frmMain.ComPort1.WriteStr(AStr+CRC16(AStr));

  WAITBUSY(2);

  if length(rfm)<3 then
  BEGIN
    WriteLog(PCHAR('���ش�����С��3:'+RFM));
    exit;
  END;
  if AStr[2]=#3 then
  begin
    if ord(rfm[3])<>iReadDataNum*2 then
    BEGIN
      WriteLog(PCHAR('���ش����Ȳ���.���ʹ�:'+AStr+';���ش�'+RFM));
      exit;
    end;
  end;
  if COPY(rfm,length(RFM)-1,2)<>CRC16(COPY(RFM,1,length(RFM)-2)) then
  BEGIN
    WriteLog(PCHAR('���ش�CRCУ��ʧ��:'+RFM));
    exit;
  END;

  result:=true;
end;

function MakeDBConn:boolean;
var
  newconnstr,ss: string;
  Ini: tinifile;
  initialcatalog: string;

  Label labReadIni;
begin
  result:=false;

  labReadIni:
  Ini := tinifile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  initialcatalog := Ini.ReadString('�������ݿ�', '���ݿ�', '');
  Ini.Free;

  newconnstr :='';
  newconnstr := newconnstr + 'Data Source=' + initialcatalog + ';';
  newconnstr := newconnstr + 'provider=' + 'Microsoft.Jet.OLEDB.4.0' + ';';
  //Persist Security Info,��ʾADO�����ݿ����ӳɹ����Ƿ񱣴�������Ϣ
  //ADOȱʡΪTrue,ADO.netȱʡΪFalse
  //�����лᴫADOConnection��Ϣ��TADOLYQuery,������ΪTrue
  newconnstr := newconnstr + 'Persist Security Info=True;';
  try
    dm.ADOConnection1.Connected := false;
    dm.ADOConnection1.ConnectionString := newconnstr;
    dm.ADOConnection1.Connected := true;
    result:=true;
    LisConn:=newconnstr;
  except
  end;
  if not result then
  begin
    ss:='���ݿ�'+#2+'Edit'+#2+#2+'0'+#2+#2+#3;
    if ShowOptionForm('�������ݿ�','�������ݿ�',Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini'))) then
      goto labReadIni else application.Terminate;
  end;
end;

function ExecSQLCmd(AConnectionString:string;ASQL:string):integer;
var
  Conn:TADOConnection;
  Qry:TAdoQuery;
begin
  Conn:=TADOConnection.Create(nil);
  Conn.LoginPrompt:=false;
  Conn.ConnectionString:=AConnectionString;
  Qry:=TAdoQuery.Create(nil);
  Qry.Connection:=Conn;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Text:=ASQL;
  Try
    Result:=Qry.ExecSQL;
  except
    on E:Exception do
    begin
      WriteLog(pchar('������:'+operator_name+'������ExecSQLCmdʧ��:'+E.Message+'�������SQL:'+ASQL));
      MESSAGEDLG('����ExecSQLCmdʧ��:'+E.Message+'�������SQL:'+ASQL,mtError,[mbOK],0);
      Result:=-1;
    end;
  end;
  Qry.Free;
  Conn.Free;
end;

function ScalarSQLCmd(AConnectionString:string;ASQL:string):string;
var
  Conn:TADOConnection;
  Qry:TAdoQuery;
begin
  Result:='';
  Conn:=TADOConnection.Create(nil);
  Conn.LoginPrompt:=false;
  Conn.ConnectionString:=AConnectionString;
  Qry:=TAdoQuery.Create(nil);
  Qry.Connection:=Conn;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Text:=ASQL;
  Try
    Qry.Open;
  except
    on E:Exception do
    begin
      WriteLog(pchar('������:'+operator_name+'������ScalarSQLCmdʧ��:'+E.Message+'�������SQL:'+ASQL));
      MESSAGEDLG('����ScalarSQLCmdʧ��:'+E.Message+'�������SQL:'+ASQL,mtError,[mbOK],0);
      Qry.Free;
      Conn.Free;
      exit;
    end;
  end;
  Result:=Qry.Fields[0].AsString;
  Qry.Free;
  Conn.Free;
end;

end.