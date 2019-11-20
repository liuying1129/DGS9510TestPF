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
  TRrcDGS9510=RECORD {DGS9510的数据记录}
  OutU_UV,OutU_VW,OutU_WU,OutU_U,OutU_V,OutU_W:word;//输出电压
  OutA_U,OutA_V,OutA_W:Double;//输出电流
  ActP_U,ActP_V,ActP_W,ActP_Total:Double;//有功功率
  ReactP_U,ReactP_V,ReactP_W,ReactP_Total:Double;//无功功率
  PF_U,PF_V,PF_W,PF_Avg:Double;//功率因数
  PS_U,PS_V,PS_W:integer;//相序
  PS_HZ:Double;//发电频率
  Exc_V,Exc_A:integer;//励磁电压/电流
  CT_Rate:word;//CT变比
  HZ_Specified:Double;//额定频率
  U_Specified:word;//额定电压
  ActP_Specified:word;//额定功率
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
  ifBusy:boolean;//已接收或超时才能发送下一条指令
  RFM:STRING;
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
  ifBusy:=false;//变量初始化
  RFM:='';//变量初始化
  
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
  frmMain.ComDataPacket1.Size:=5+iReadDataNum*2;//5是固定长度(1字节地址,1字节功能码,1字节数据长度,2字节CRC);1是读取1个数据(1*2个字节)
  if AStr[2]=#6 then frmMain.ComDataPacket1.Size:=8;
  ifBusy:=true;
  RFM:='';
  frmMain.ComPort1.WriteStr(AStr+CRC16(AStr));

  WAITBUSY(2);

  if length(rfm)<3 then
  BEGIN
    WriteLog(PCHAR('返回串长度小于3:'+RFM));
    exit;
  END;
  if AStr[2]=#3 then
  begin
    if ord(rfm[3])<>iReadDataNum*2 then
    BEGIN
      WriteLog(PCHAR('返回串长度不符.发送串:'+AStr+';返回串'+RFM));
      exit;
    end;
  end;
  if COPY(rfm,length(RFM)-1,2)<>CRC16(COPY(RFM,1,length(RFM)-2)) then
  BEGIN
    WriteLog(PCHAR('返回串CRC校验失败:'+RFM));
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
  initialcatalog := Ini.ReadString('连接数据库', '数据库', '');
  Ini.Free;

  newconnstr :='';
  newconnstr := newconnstr + 'Data Source=' + initialcatalog + ';';
  newconnstr := newconnstr + 'provider=' + 'Microsoft.Jet.OLEDB.4.0' + ';';
  //Persist Security Info,表示ADO在数据库连接成功后是否保存密码信息
  //ADO缺省为True,ADO.net缺省为False
  //程序中会传ADOConnection信息给TADOLYQuery,故设置为True
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
    ss:='数据库'+#2+'Edit'+#2+#2+'0'+#2+#2+#3;
    if ShowOptionForm('连接数据库','连接数据库',Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini'))) then
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
      WriteLog(pchar('函数ExecSQLCmd失败:'+E.Message+'。错误的SQL:'+ASQL));
      MESSAGEDLG('函数ExecSQLCmd失败:'+E.Message+'。错误的SQL:'+ASQL,mtError,[mbOK],0);
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
      WriteLog(pchar('函数ScalarSQLCmd失败:'+E.Message+'。错误的SQL:'+ASQL));
      MESSAGEDLG('函数ScalarSQLCmd失败:'+E.Message+'。错误的SQL:'+ASQL,mtError,[mbOK],0);
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
