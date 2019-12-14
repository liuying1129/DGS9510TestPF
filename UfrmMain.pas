unit UfrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, Spin,
  CPortCtl, ToolWin, inifiles, CPort,StrUtils, DB, ADODB, ActnList, DosMove,
  FR_Class;

type
  TfrmMain = class(TForm)
    TimerRefreshShow: TTimer;
    TimerGetData: TTimer;
    StatusBar1: TStatusBar;
    ComPort1: TComPort;
    ComDataPacket1: TComDataPacket;
    Panel30: TPanel;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit17: TLabeledEdit;
    LabeledEdit18: TLabeledEdit;
    BitBtn14: TBitBtn;
    Panel32: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    GroupBox7: TGroupBox;
    Label31: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    BitBtn1: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    DBGrid2: TDBGrid;
    Panel31: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel13: TPanel;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    GroupBox6: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    DosMove1: TDosMove;
    Panel29: TPanel;
    cbCOMM: TComboBox;
    Edit1: TSpinEdit;
    ComLed1: TComLed;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel33: TPanel;
    SpeedButton7: TSpeedButton;
    frReport1: TfrReport;
    Panel34: TPanel;
    SpeedButton9: TSpeedButton;
    LabeledEdit19: TLabeledEdit;
    Panel35: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label29: TLabel;
    Label35: TLabel;
    GroupBox8: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ProgressBar1: TProgressBar;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Label40: TLabel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    procedure TimerRefreshShowTimer(Sender: TObject);
    procedure TimerGetDataTimer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComDataPacket1Packet(Sender: TObject; const Str: String);
    procedure cbCOMMChange(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure updateEdit;
    procedure ClearEdit;
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ADOQuery2AfterOpen(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ComPort1AfterOpen(Sender: TObject);
    procedure ComPort1AfterClose(Sender: TObject);
    procedure ComPort1Error(Sender: TObject; Errors: TComErrors);
    procedure ComPort1Exception(Sender: TObject;
      TComException: TComExceptions; ComportMessage: String;
      WinError: Int64; WinMessage: String);
    procedure SpeedButton7Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure SpeedButton10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
    ifnewadd:boolean;
    procedure updateAdoQuery1;
    procedure update_Ado_dtl;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses UDM;

var
  ifReadParam:boolean;

  ifSetCT:boolean;
  ifSetHZ:boolean;
  ifSetU:boolean;
  ifSetActP:boolean;
  ifSetPF:boolean;

  ifLoadAdd,ifLoadAdd2:boolean;
  ifLoadReduce,ifLoadReduce2:boolean;

  bSelfDef1,bSelfDef12:boolean;
  bSelfDef2,bSelfDef22:boolean;

  W_CT_Rate:integer;//CT���
  W_U_Specified:integer;//���ѹ
  F_HZ_Specified:Double;//�Ƶ��
  W_ActP_Specified:integer;//�����
  W_PF:Word;//�����������İٷ���

{$R *.dfm}

procedure TfrmMain.TimerRefreshShowTimer(Sender: TObject);
begin
  Panel1.Caption:=inttostr(RrcDGS9510.OutU_UV);
  Panel2.Caption:=inttostr(RrcDGS9510.OutU_VW);
  Panel3.Caption:=inttostr(RrcDGS9510.OutU_WU);
  Panel4.Caption:=inttostr(RrcDGS9510.OutU_U);
  Panel5.Caption:=inttostr(RrcDGS9510.OutU_V);
  Panel6.Caption:=inttostr(RrcDGS9510.OutU_W);

  Panel10.Caption:=floattostr(RrcDGS9510.OutA_U);
  Panel11.Caption:=floattostr(RrcDGS9510.OutA_V);
  Panel12.Caption:=floattostr(RrcDGS9510.OutA_W);

  Panel7.Caption:=floattostr(RrcDGS9510.ActP_U);
  Panel8.Caption:=floattostr(RrcDGS9510.ActP_V);
  Panel9.Caption:=floattostr(RrcDGS9510.ActP_W);
  Panel13.Caption:=floattostr(RrcDGS9510.ActP_Total);

  Panel14.Caption:=floattostr(RrcDGS9510.ReactP_U);
  Panel15.Caption:=floattostr(RrcDGS9510.ReactP_V);
  Panel16.Caption:=floattostr(RrcDGS9510.ReactP_W);
  Panel17.Caption:=floattostr(RrcDGS9510.ReactP_Total);

  Panel36.Caption:=floattostr(RrcDGS9510.ApparentP_A);
  Panel37.Caption:=floattostr(RrcDGS9510.ApparentP_B);
  Panel38.Caption:=floattostr(RrcDGS9510.ApparentP_C);
  Panel39.Caption:=floattostr(RrcDGS9510.ApparentP_Total);

  Panel18.Caption:=floattostr(RrcDGS9510.PF_U);
  Panel19.Caption:=floattostr(RrcDGS9510.PF_V);
  Panel20.Caption:=floattostr(RrcDGS9510.PF_W);
  Panel21.Caption:=floattostr(RrcDGS9510.PF_Avg);

  Panel22.Caption:=floattostr(RrcDGS9510.PS_U);
  Panel23.Caption:=floattostr(RrcDGS9510.PS_V);
  Panel24.Caption:=floattostr(RrcDGS9510.PS_W);
  Panel25.Caption:=floattostr(RrcDGS9510.PS_HZ);

  Panel26.Caption:=floattostr(RrcDGS9510.Exc_V);
  Panel27.Caption:=floattostr(RrcDGS9510.Exc_A);

  if RrcDGS9510.ActP_Specified<>0 then
    Panel28.Caption:=format('%.1f',[RrcDGS9510.ActP_Total/RrcDGS9510.ActP_Specified*100]);
    //Panel28.Caption:=floattostr(RrcDGS9510.ActP_Total/RrcDGS9510.ActP_Specified*100);

  Label31.Caption:=inttostr(RrcDGS9510.CT_Rate);
  Label33.Caption:=floattostr(RrcDGS9510.HZ_Specified);
  Label34.Caption:=inttostr(RrcDGS9510.U_Specified);
  Label32.Caption:=inttostr(RrcDGS9510.ActP_Specified);
  Label30.Caption:=floattostr(RrcDGS9510.PF_SET)+'%';
end;

procedure TfrmMain.TimerGetDataTimer(Sender: TObject);
begin
  if not ComPort1.Connected then exit;

  (Sender as TTimer).Enabled:=false;

  //WriteLog(pchar('���ο�ʼ'+FormatDateTime('hh:nn:ss zzz',Now())));

  {if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_UNKNOW+#0#0#0#$10) then
  begin
    SHOWMESSAGE(RFM);
  END;
  if dm.SendDate(EQUIP_ADDR+FUNC_CODE_UNKNOW+#0#0#0#$10) then
  begin
    SHOWMESSAGE(RFM);
  END;
  if dm.SendDate(EQUIP_ADDR+FUNC_CODE_UNKNOW+#0#0#0#$10) then
  begin
    SHOWMESSAGE(RFM);
  END;//}

  if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_READ_REGISTER+#0#75#0#83) then
  begin
    RrcDGS9510.OutU_UV:=Decode2Byte(copy(RFM,4,2));
    RrcDGS9510.OutU_VW:=Decode2Byte(copy(RFM,6,2));
    RrcDGS9510.OutU_WU:=Decode2Byte(copy(RFM,8,2));
    RrcDGS9510.OutU_U:=Decode2Byte(copy(RFM,10,2));
    RrcDGS9510.OutU_V:=Decode2Byte(copy(RFM,12,2));
    RrcDGS9510.OutU_W:=Decode2Byte(copy(RFM,14,2));

    RrcDGS9510.PS_U:=Decode2ByteNPN(copy(RFM,16,2))/10;
    RrcDGS9510.PS_V:=Decode2ByteNPN(copy(RFM,18,2))/10;
    RrcDGS9510.PS_W:=Decode2ByteNPN(copy(RFM,20,2))/10;
    RrcDGS9510.PS_HZ:=Decode2Byte(copy(RFM,22,2))/100;

    RrcDGS9510.OutA_U:=Decode2Byte(copy(RFM,44,2))/10;
    RrcDGS9510.OutA_V:=Decode2Byte(copy(RFM,46,2))/10;
    RrcDGS9510.OutA_W:=Decode2Byte(copy(RFM,48,2))/10;

    RrcDGS9510.ActP_U:=Decode4ByteNPN(copy(RFM,60,4))/10;
    RrcDGS9510.ActP_V:=Decode4ByteNPN(copy(RFM,64,4))/10;
    RrcDGS9510.ActP_W:=Decode4ByteNPN(copy(RFM,68,4))/10;
    RrcDGS9510.ActP_Total:=Decode4ByteNPN(copy(RFM,72,4))/10;
    //WriteLog(pchar('�й��ֽ�1:'+inttostr(ord(RFM[72]))));
    //WriteLog(pchar('�й��ֽ�2:'+inttostr(ord(RFM[73]))));
    //WriteLog(pchar('�й��ֽ�3:'+inttostr(ord(RFM[74]))));
    //WriteLog(pchar('�й��ֽ�4:'+inttostr(ord(RFM[75]))));

    RrcDGS9510.ReactP_U:=Decode4ByteNPN(copy(RFM,76,4))/10;
    RrcDGS9510.ReactP_V:=Decode4ByteNPN(copy(RFM,80,4))/10;
    RrcDGS9510.ReactP_W:=Decode4ByteNPN(copy(RFM,84,4))/10;
    RrcDGS9510.ReactP_Total:=Decode4ByteNPN(copy(RFM,88,4))/10;
    //WriteLog(pchar('�޹��ֽ�1:'+inttostr(ord(RFM[88]))));
    //WriteLog(pchar('�޹��ֽ�2:'+inttostr(ord(RFM[89]))));
    //WriteLog(pchar('�޹��ֽ�3:'+inttostr(ord(RFM[90]))));
    //WriteLog(pchar('�޹��ֽ�4:'+inttostr(ord(RFM[91]))));

    RrcDGS9510.ApparentP_A:=Decode4ByteNPN(copy(RFM,92,4))/10;
    RrcDGS9510.ApparentP_B:=Decode4ByteNPN(copy(RFM,96,4))/10;
    RrcDGS9510.ApparentP_C:=Decode4ByteNPN(copy(RFM,100,4))/10;
    RrcDGS9510.ApparentP_Total:=Decode4ByteNPN(copy(RFM,104,4))/10;

    RrcDGS9510.PF_U:=Decode2ByteNPN(copy(RFM,108,2))/100;
    RrcDGS9510.PF_V:=Decode2ByteNPN(copy(RFM,110,2))/100;
    RrcDGS9510.PF_W:=Decode2ByteNPN(copy(RFM,112,2))/100;
    RrcDGS9510.PF_Avg:=Decode2ByteNPN(copy(RFM,114,2))/100;

    //RrcDGS9510.Exc_V:=Decode2Byte(copy(RFM,138,2))/10;//�õ�ַΪ��ص�ѹ
    //RrcDGS9510.Exc_A:=Decode2Byte(copy(RFM,140,2))/10;//�õ�ַΪ������ѹ

    RrcDGS9510.Exc_V:=Decode2ByteNPN(copy(RFM,164,2))/10;//�õ�ַΪ�ɱ�̴�����1��ֵ,�������ŵ�ѹ
    RrcDGS9510.Exc_A:=Decode2ByteNPN(copy(RFM,168,2))/100;//�õ�ַΪ�ɱ�̴�����2��ֵ,�������ŵ���
  end;

  if ifReadParam then//��ȡ����
  begin
    ifReadParam:=false;

    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_READ_REGISTER+#5#$78#0#1) then
    begin
      RrcDGS9510.CT_Rate:=Decode2Byte(copy(RFM,4,2));
    end;

    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_READ_REGISTER+#5#$18#0#1) then
    begin
      RrcDGS9510.HZ_Specified:=Decode2Byte(copy(RFM,4,2))/10;
    end;

    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_READ_REGISTER+#$11#2#0#1) then
    begin
      RrcDGS9510.PF_SET:=Decode2Byte(copy(RFM,4,2))/10;
    end;

    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_READ_REGISTER+#5#$16#0#1) then
    begin
      RrcDGS9510.U_Specified:=Decode2Byte(copy(RFM,4,2));
    end;

    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_READ_REGISTER+#$11#9#0#1) then
    begin
      RrcDGS9510.ActP_Specified:=Decode2Byte(copy(RFM,4,2));
    end;
  end;

  if ifSetCT then
  begin
    ifSetCT:=false;
    
    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_REGISTER+#5#$78+Encode2Byte(W_CT_Rate)) then
    begin
      MESSAGEDLG('����CT��ȳɹ�!',mtInformation,[mbOK],0);
    end;
    ifReadParam:=true;
  end;

  if ifSetU then
  begin
    ifSetU:=false;
    
    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_REGISTER+#5#$16+Encode2Byte(W_U_Specified)) then
    begin
      MESSAGEDLG('���ö��ѹ�ɹ�!',mtInformation,[mbOK],0);
    end;
    ifReadParam:=true;
  end;

  if ifSetHZ then
  begin
    ifSetHZ:=false;
    
    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_REGISTER+#5#$18+Encode2Byte(trunc(F_HZ_Specified*10))) then
    begin
      MESSAGEDLG('���öƵ�ʳɹ�!',mtInformation,[mbOK],0);
    end;
    ifReadParam:=true;
  end;

  if ifSetPF then
  begin
    ifSetPF:=false;
    
    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_REGISTER+#$11#2+Encode2Byte(W_PF)) then
    begin
      MESSAGEDLG('���ù��������ɹ�!',mtInformation,[mbOK],0);
    end;
    ifReadParam:=true;
  end;

  if ifSetActP then
  begin
    ifSetActP:=false;
    
    if dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_REGISTER+#$11#9+Encode2Byte(W_ActP_Specified)) then
    begin
      MESSAGEDLG('���ö���ʳɹ�!',mtInformation,[mbOK],0);
    end;
    ifReadParam:=true;
  end;

  if ifLoadAdd then//���ؼ����
  begin
    ifLoadAdd:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#20#$ff#0);
  end;

  if ifLoadAdd2 then//���ؼӲ����
  begin
    ifLoadAdd2:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#20#$0#0);
  end;

  if ifLoadReduce then//���ؼ����
  begin
    ifLoadReduce:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#21#$ff#0);
  end;

  if ifLoadReduce2 then//���ؼ������
  begin
    ifLoadReduce2:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#21#$0#0);
  end;

  if bSelfDef1 then//�Զ������1
  begin
    bSelfDef1:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#22#$ff#0);
  end;

  if bSelfDef12 then//�Զ��岻���1
  begin
    bSelfDef12:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#22#$0#0);
  end;

  if bSelfDef2 then//�Զ������2
  begin
    bSelfDef2:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#23#$ff#0);
  end;

  if bSelfDef22 then//�Զ��岻���2
  begin
    bSelfDef22:=false;
    dm.SendDate(chr(Edit1.Value)+FUNC_CODE_WRITE_SWITCH+#0#23#$0#0);
  end;
  //WriteLog(pchar('���ν���'+FormatDateTime('hh:nn:ss zzz',Now())));

  (Sender as TTimer).Enabled:=true;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
//д��CT���
begin
  if not trystrtoint(trim(LabeledEdit5.Text),W_CT_Rate) then
  begin
    MESSAGEDLG('����ֵ��Ч!',mtError,[mbOK],0);
    exit;
  end;

  ifSetCT:=true;
end;

procedure TfrmMain.BitBtn12Click(Sender: TObject);
//д��Ƶ��
begin
  if not TryStrToFloatExt(pchar(trim(LabeledEdit2.Text)),F_HZ_Specified) then
  begin
    MESSAGEDLG('����ֵ��Ч!',mtError,[mbOK],0);
    exit;
  end;

  ifSetHZ:=true;
end;

procedure TfrmMain.BitBtn10Click(Sender: TObject);
//д�빦������
begin
  if RadioButton1.Checked then W_PF:=763
  else if RadioButton2.Checked then W_PF:=0
  else begin
    MESSAGEDLG('��ѡ��������!',mtError,[mbOK],0);
    exit;
  end;

  ifSetPF:=true;
end;

procedure TfrmMain.BitBtn13Click(Sender: TObject);
//д����ѹ
begin
  if not trystrtoint(trim(LabeledEdit1.Text),W_U_Specified) then
  begin
    MESSAGEDLG('����ֵ��Ч!',mtError,[mbOK],0);
    exit;
  end;

  ifSetU:=true;
end;

procedure TfrmMain.BitBtn11Click(Sender: TObject);
//д������
begin
  if not trystrtoint(trim(LabeledEdit3.Text),W_ActP_Specified) then
  begin
    MESSAGEDLG('����ֵ��Ч!',mtError,[mbOK],0);
    exit;
  end;

  ifSetActP:=true;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
var
  ConfigIni:tinifile;
begin
  ConfigIni:=tinifile.Create(ChangeFileExt(Application.ExeName,'.ini'));

  ConfigIni.WriteString('Interface','COM',trim(cbCOMM.Text));
  configini.WriteInteger('Interface','ControllerAddr',edit1.Value);

  configini.Free;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  configini:tinifile;
  fs:TFormatSettings;
begin
  CONFIGINI:=TINIFILE.Create(ChangeFileExt(Application.ExeName,'.ini'));

  cbCOMM.Text:=ConfigIni.ReadString('Interface','COM','COM1');
  edit1.Value:=configini.ReadInteger('Interface','ControllerAddr',1);
  Panel29.Caption:=configini.ReadString('Interface','SysTitle','��������ܲ���ϵͳ');
  SpeedButton12.Caption:=configini.ReadString('Interface','SelfDefBtnCaption1','�Զ���1');
  SpeedButton13.Caption:=configini.ReadString('Interface','SelfDefBtnCaption2','�Զ���2');

  configini.Free;
  
  ComPort1.Close;
  ComPort1.Port:=cbCOMM.Text;
  try
    ComPort1.Open;
  except
  end;

  fs.TimeSeparator:=':';
  fs.ShortTimeFormat:='hh:nn:ss';
  DateTimePicker1.Date:=now-7;
  DateTimePicker1.Time:=strtotime('00:00:00',fs);
  DateTimePicker2.Date:=now+7;
  DateTimePicker2.Time:=strtotime('23:59:59',fs);

  updateAdoQuery1;
end;

procedure TfrmMain.ComDataPacket1Packet(Sender: TObject;
  const Str: String);
begin
  ifBusy:=false;
  RFM:=Str;
end;

procedure TfrmMain.cbCOMMChange(Sender: TObject);
begin
  ComPort1.Close;
  ComPort1.Port:=cbCOMM.Text;
  try
    ComPort1.Open;
  except
  end;
end;

procedure TfrmMain.BitBtn6Click(Sender: TObject);
begin
  ClearEdit;

  if LabeledEdit6.CanFocus then LabeledEdit6.SetFocus;

  ifnewadd:=true;
end;

procedure TfrmMain.BitBtn14Click(Sender: TObject);
var
  adotemp11,adotemp22:tadoquery;
  sqlstr:string;
  Insert_Identity:integer;
  iOrderVolt,iHighPotTest:integer;
  iOrderP,iExcStatorO,iMainStatorO,iOrderHZ:single;
begin
  adotemp11:=tadoquery.Create(nil);
  adotemp11.Connection:=DM.ADOConnection1;
  if ifNewAdd then //����
  begin
    ifNewAdd:=false;

    sqlstr:='Insert into Test_Master ('+
                        ' BenchNo, PartNo, OrderVolt, Model, SerialNo, OrderP, ExcStatorO, MainStatorO, OrderHZ, Remark, HighPotTest, AVRModel, AVRNo, Tester,TestDate) values ('+
                        ':BenchNo,:PartNo,:OrderVolt,:Model,:SerialNo,:OrderP,:ExcStatorO,:MainStatorO,:OrderHZ,:Remark,:HighPotTest,:AVRModel,:AVRNo,:Tester,Now()); ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    adotemp11.Parameters.ParamByName('BenchNo').Value:=trim(LabeledEdit6.Text);
    adotemp11.Parameters.ParamByName('PartNo').Value:=trim(LabeledEdit7.Text);
    if trystrtoint(LabeledEdit8.Text,iOrderVolt) then
      adotemp11.Parameters.ParamByName('OrderVolt').Value:=iOrderVolt
    else adotemp11.Parameters.ParamByName('OrderVolt').Value:=null;
    adotemp11.Parameters.ParamByName('Model').Value:=trim(LabeledEdit9.Text);
    adotemp11.Parameters.ParamByName('SerialNo').Value:=trim(LabeledEdit10.Text);
    if trystrtofloat(LabeledEdit11.Text,iOrderP) then
      adotemp11.Parameters.ParamByName('OrderP').Value:=iOrderP
    else adotemp11.Parameters.ParamByName('OrderP').Value:=null;
    if trystrtofloat(LabeledEdit12.Text,iExcStatorO) then
      adotemp11.Parameters.ParamByName('ExcStatorO').Value:=iExcStatorO
    else adotemp11.Parameters.ParamByName('ExcStatorO').Value:=null;
    if trystrtofloat(LabeledEdit13.Text,iMainStatorO) then
      adotemp11.Parameters.ParamByName('MainStatorO').Value:=iMainStatorO
    else adotemp11.Parameters.ParamByName('MainStatorO').Value:=null;
    if trystrtofloat(LabeledEdit14.Text,iOrderHZ) then
      adotemp11.Parameters.ParamByName('OrderHZ').Value:=iOrderHZ
    else adotemp11.Parameters.ParamByName('OrderHZ').Value:=null;
    adotemp11.Parameters.ParamByName('Remark').Value:=trim(LabeledEdit15.Text);
    if trystrtoint(LabeledEdit16.Text,iHighPotTest) then
      adotemp11.Parameters.ParamByName('HighPotTest').Value:=iHighPotTest
    else adotemp11.Parameters.ParamByName('HighPotTest').Value:=null;
    adotemp11.Parameters.ParamByName('AVRModel').Value:=trim(LabeledEdit17.Text);
    adotemp11.Parameters.ParamByName('AVRNo').Value:=trim(LabeledEdit18.Text);
    adotemp11.Parameters.ParamByName('Tester').Value:=trim(LabeledEdit19.Text);
    adotemp11.ExecSQL;
    ADOQuery1.Requery([]);

    adotemp22:=tadoquery.Create(nil);
    adotemp22.Connection:=DM.ADOConnection1;
    adotemp22.Close;
    adotemp22.SQL.Clear;
    adotemp22.SQL.Add(' SELECT @@identity AS Insert_Identity; ');
    adotemp22.Open;
    Insert_Identity:=adotemp22.fieldbyname('Insert_Identity').AsInteger;
    adotemp22.Free;
  end else //�޸�
  begin
    IF AdoQuery1.RecordCount=0 THEN
    BEGIN
      adotemp11.Free;
      MESSAGEDLG('û�м�¼�����޸ģ���Ҫ���������ȵ��"������ť"��',mtWarning,[mbOK],0);
      EXIT;
    END;

    Insert_Identity:=ADOQuery1.fieldbyname('Ψһ���').AsInteger;
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Text:=' Update Test_Master  '+
    '  set BenchNo=:BenchNo,PartNo=:PartNo,OrderVolt=:OrderVolt,Model=:Model,SerialNo=:SerialNo,OrderP=:OrderP,'+
    '  ExcStatorO=:ExcStatorO,MainStatorO=:MainStatorO,OrderHZ=:OrderHZ,Remark=:Remark,HighPotTest=:HighPotTest,AVRModel=:AVRModel,AVRNo=:AVRNo,Tester=:Tester '+
    '  Where    Unid=:Unid  ';
    adotemp11.Parameters.ParamByName('BenchNo').Value:=trim(LabeledEdit6.Text);
    adotemp11.Parameters.ParamByName('PartNo').Value:=trim(LabeledEdit7.Text);
    if trystrtoint(LabeledEdit8.Text,iOrderVolt) then
      adotemp11.Parameters.ParamByName('OrderVolt').Value:=iOrderVolt
    else adotemp11.Parameters.ParamByName('OrderVolt').Value:=null;
    adotemp11.Parameters.ParamByName('Model').Value:=trim(LabeledEdit9.Text);
    adotemp11.Parameters.ParamByName('SerialNo').Value:=trim(LabeledEdit10.Text);
    if trystrtofloat(LabeledEdit11.Text,iOrderP) then
      adotemp11.Parameters.ParamByName('OrderP').Value:=iOrderP
    else adotemp11.Parameters.ParamByName('OrderP').Value:=null;
    if trystrtofloat(LabeledEdit12.Text,iExcStatorO) then
      adotemp11.Parameters.ParamByName('ExcStatorO').Value:=iExcStatorO
    else adotemp11.Parameters.ParamByName('ExcStatorO').Value:=null;
    if trystrtofloat(LabeledEdit13.Text,iMainStatorO) then
      adotemp11.Parameters.ParamByName('MainStatorO').Value:=iMainStatorO
    else adotemp11.Parameters.ParamByName('MainStatorO').Value:=null;
    if trystrtofloat(LabeledEdit14.Text,iOrderHZ) then
      adotemp11.Parameters.ParamByName('OrderHZ').Value:=iOrderHZ
    else adotemp11.Parameters.ParamByName('OrderHZ').Value:=null;
    adotemp11.Parameters.ParamByName('Remark').Value:=trim(LabeledEdit15.Text);
    if trystrtoint(LabeledEdit16.Text,iHighPotTest) then
      adotemp11.Parameters.ParamByName('HighPotTest').Value:=iHighPotTest
    else adotemp11.Parameters.ParamByName('HighPotTest').Value:=null;
    adotemp11.Parameters.ParamByName('AVRModel').Value:=trim(LabeledEdit17.Text);
    adotemp11.Parameters.ParamByName('AVRNo').Value:=trim(LabeledEdit18.Text);
    adotemp11.Parameters.ParamByName('Tester').Value:=trim(LabeledEdit19.Text);
    adotemp11.Parameters.ParamByName('Unid').Value:=Insert_Identity;
    adotemp11.ExecSQL;
    AdoQuery1.Refresh;
  end;

  adotemp11.Free;
  AdoQuery1.Locate('Ψһ���',Insert_Identity,[loCaseInsensitive]) ;
  updateEdit;
end;

procedure TfrmMain.updateAdoQuery1;
begin
  adoquery1.Close;
  adoquery1.SQL.Clear;

  adoquery1.SQL.Text:='select Unid as ���Ժ�,Create_Time as ����ʱ��,BenchNo as ʵ��̨��,PartNo as ���Ϻ�,OrderVolt as ������ѹ,Model as �ͺ�,SerialNo as ���к�,'+
                      'OrderP as ��������,ExcStatorO as ���Ŷ��ӵ���,MainStatorO as �����ӵ���,OrderHZ as ����Ƶ��,Remark as ��ע,'+
                      'HighPotTest as ��ѹ����,AVRModel as AVR�ͺ�,AVRNo as AVR���,Tester as ������,TestDate as ��������,'+
                      'Auditor as �����,Audit_Date as ���ʱ�� from Test_Master '+
                      ' where Create_Time between :Create_Time_Start and :Create_Time_Stop ';
                      
  adoquery1.Parameters.ParamByName('Create_Time_Start').Value:=DateTimePicker1.DateTime;
  adoquery1.Parameters.ParamByName('Create_Time_Stop').Value:=DateTimePicker2.DateTime;
  adoquery1.Open;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ifReadParam:=true;

  ifSetCT:=false;
  ifSetHZ:=false;
  ifSetU:=false;
  ifSetActP:=false;
  ifSetPF:=false;

  ifLoadAdd:=false;
  ifLoadAdd2:=false;
  ifLoadReduce:=false;
  ifLoadReduce2:=false;

  bSelfDef1:=false;
  bSelfDef12:=false;
  bSelfDef2:=false;
  bSelfDef22:=false;

  ADOQuery1.Connection:=dm.ADOConnection1;
  ADOQuery2.Connection:=dm.ADOConnection1;
end;

procedure TfrmMain.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;
  dbgrid1.Columns.Items[0].Width:=45;
  dbgrid1.Columns.Items[1].Width:=140;
  dbgrid1.Columns.Items[2].Width:=60;
  dbgrid1.Columns.Items[3].Width:=60;
  dbgrid1.Columns.Items[4].Width:=60;
  dbgrid1.Columns.Items[5].Width:=60;
  dbgrid1.Columns.Items[6].Width:=60;
end;

procedure TfrmMain.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  ifNewAdd:=false;
  updateEdit;
  
  update_Ado_dtl;
end;

procedure TfrmMain.updateEdit;
begin
  if adoquery1.RecordCount<>0 then
  begin
    LabeledEdit6.Text:=trim(adoquery1.fieldbyname('ʵ��̨��').AsString);
    LabeledEdit7.Text:=trim(adoquery1.fieldbyname('���Ϻ�').AsString);
    LabeledEdit8.Text:=trim(adoquery1.fieldbyname('������ѹ').AsString);
    LabeledEdit9.Text:=trim(adoquery1.fieldbyname('�ͺ�').AsString);
    LabeledEdit10.Text:=trim(adoquery1.fieldbyname('���к�').AsString);
    LabeledEdit11.Text:=trim(adoquery1.fieldbyname('��������').AsString);
    LabeledEdit12.Text:=trim(adoquery1.fieldbyname('���Ŷ��ӵ���').AsString);
    LabeledEdit13.Text:=adoquery1.fieldbyname('�����ӵ���').AsString;
    LabeledEdit14.Text:=adoquery1.fieldbyname('����Ƶ��').AsString;
    LabeledEdit15.Text:=adoquery1.fieldbyname('��ע').AsString;
    LabeledEdit16.Text:=adoquery1.fieldbyname('��ѹ����').AsString;
    LabeledEdit17.Text:=adoquery1.fieldbyname('AVR�ͺ�').AsString;
    LabeledEdit18.Text:=adoquery1.fieldbyname('AVR���').AsString;
  end else
  begin
    ClearEdit;
  end;
end;

procedure TfrmMain.ClearEdit;
begin
  labelededit6.Clear;
  labelededit7.Clear;
  labelededit8.Clear;
  labelededit9.Clear;
  labelededit10.Clear;
  labelededit11.Clear;
  labelededit12.Clear;
  labelededit13.Clear;
  labelededit14.Clear;
  labelededit15.Clear;
  labelededit16.Clear;
  labelededit17.Clear;
  labelededit18.Clear;
  labelededit19.Clear;
end;

procedure TfrmMain.BitBtn7Click(Sender: TObject);
begin
  if not DBGrid1.DataSource.DataSet.Active then exit;
  if DBGrid1.DataSource.DataSet.RecordCount=0 then exit;

  if (MessageDlg('ȷʵҪɾ���ü�¼��',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

    DBGrid1.DataSource.DataSet.Delete;

    adoquery1.Refresh;
    updateEdit;
end;

procedure TfrmMain.SpeedButton5Click(Sender: TObject);
const
  WaitTime=10;//�ȴ�10��
var
  adotemp11,adotemp22:tadoquery;
  sqlstr:string;
  Insert_Identity:integer;
  
  currenttime:longword;
  i:integer;

  Save_Cursor:TCursor;
begin
  if not ADOQuery1.Active then exit;
  if ADOQuery1.RecordCount<=0 then exit;

  ProgressBar1.Max:=WaitTime;

  (Sender as TSpeedButton).Enabled:=false;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  for i := 1 to WaitTime do
  begin
  
    //�ȴ�1��
    currenttime:=gettickcount() div 1000;
    while (gettickcount() div 1000)<(currenttime+1) do
    begin
      application.ProcessMessages;
    end;

    ProgressBar1.Position:=i;
  end;

  if (MessageDlg('�Ƿ񱣴�˴βɼ������', mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
  begin
    Screen.Cursor := Save_Cursor;
    (Sender as TSpeedButton).Enabled:=true;
    exit;
  end;

  ProgressBar1.Position:=0;
    
  adotemp11:=tadoquery.Create(nil);
  adotemp11.Connection:=DM.ADOConnection1;

  sqlstr:='Insert into Test_Slave ('+
                      ' PkUnid, OutU_UV, OutU_VW, OutU_WU, OutA_U, OutA_V, OutA_W, ActP_Total, ReactP_Total, PF_Avg, Exc_V, Exc_A, PS_HZ, Operator, ActP_Specified, Collect_Type, PS_U, PS_V, PS_W, ApparentP_Total) values ('+
                      ':PkUnid,:OutU_UV,:OutU_VW,:OutU_WU,:OutA_U,:OutA_V,:OutA_W,:ActP_Total,:ReactP_Total,:PF_Avg,:Exc_V,:Exc_A,:PS_HZ,:Operator,:ActP_Specified,:Collect_Type,:PS_U,:PS_V,:PS_W,:ApparentP_Total); ';
  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Add(sqlstr);
  adotemp11.Parameters.ParamByName('PkUnid').Value:=self.ADOQuery1.fieldbyname('���Ժ�').AsInteger;
  adotemp11.Parameters.ParamByName('OutU_UV').Value:=RrcDGS9510.OutU_UV;
  adotemp11.Parameters.ParamByName('OutU_VW').Value:=RrcDGS9510.OutU_VW;
  adotemp11.Parameters.ParamByName('OutU_WU').Value:=RrcDGS9510.OutU_WU;
  adotemp11.Parameters.ParamByName('OutA_U').Value:=RrcDGS9510.OutA_U;
  adotemp11.Parameters.ParamByName('OutA_V').Value:=RrcDGS9510.OutA_V;
  adotemp11.Parameters.ParamByName('OutA_W').Value:=RrcDGS9510.OutA_W;
  adotemp11.Parameters.ParamByName('ActP_Total').Value:=RrcDGS9510.ActP_Total;
  adotemp11.Parameters.ParamByName('ReactP_Total').Value:=RrcDGS9510.ReactP_Total;
  adotemp11.Parameters.ParamByName('PF_Avg').Value:=RrcDGS9510.PF_Avg;
  adotemp11.Parameters.ParamByName('Exc_V').Value:=RrcDGS9510.Exc_V;
  adotemp11.Parameters.ParamByName('Exc_A').Value:=RrcDGS9510.Exc_A;
  adotemp11.Parameters.ParamByName('PS_HZ').Value:=RrcDGS9510.PS_HZ;
  adotemp11.Parameters.ParamByName('Operator').Value:=null;
  adotemp11.Parameters.ParamByName('ActP_Specified').Value:=RrcDGS9510.ActP_Specified;
  adotemp11.Parameters.ParamByName('Collect_Type').Value:=(Sender as TSpeedButton).Caption;
  adotemp11.Parameters.ParamByName('PS_U').Value:=RrcDGS9510.PS_U;
  adotemp11.Parameters.ParamByName('PS_V').Value:=RrcDGS9510.PS_V;
  adotemp11.Parameters.ParamByName('PS_W').Value:=RrcDGS9510.PS_W;
  adotemp11.Parameters.ParamByName('ApparentP_Total').Value:=RrcDGS9510.ApparentP_Total;
  adotemp11.ExecSQL;
  ADOQuery2.Requery([]);

  adotemp22:=tadoquery.Create(nil);
  adotemp22.Connection:=DM.ADOConnection1;
  adotemp22.Close;
  adotemp22.SQL.Clear;
  adotemp22.SQL.Add(' SELECT @@identity AS Insert_Identity; ');
  adotemp22.Open;
  Insert_Identity:=adotemp22.fieldbyname('Insert_Identity').AsInteger;
  adotemp22.Free;

  adotemp11.Free;
  AdoQuery2.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;

  Screen.Cursor := Save_Cursor;
  (Sender as TSpeedButton).Enabled:=true;
end;

procedure TfrmMain.update_Ado_dtl;
var
  strsql11:string;
begin
  if not ADOQuery1.Active then exit;

  strsql11:='select IIf(ActP_Specified=0,NULL,ActP_Total/ActP_Specified*100) as ����,Collect_Type as �ɼ�����,'+
            'Create_Time as �ɼ�ʱ��,OutU_UV as �ߵ�ѹUV,OutU_VW AS �ߵ�ѹVW,OutU_WU AS �ߵ�ѹWU,'+
            'OutA_U AS ����U,OutA_V AS ����V,OutA_W AS ����W,'+
            'ActP_Total AS ���й�����,ReactP_Total as ���޹�����,ApparentP_Total as �����ڹ���,'+
            'PF_Avg as ƽ����������,Exc_V as ���ŵ�ѹ,Exc_A as ���ŵ���,PS_HZ as Ƶ��,ActP_Specified as �����,'+
            'PS_U as ����U,PS_V as ����V,PS_W as ����W,Operator as ������,Unid '+
            ' from Test_Slave where pkunid=:pkunid order by Unid';

  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Text:=strsql11;
  ADOQuery2.Parameters.ParamByName('pkunid').Value :=
      ADOQuery1.FieldByName('���Ժ�').AsInteger;
  try
    ADOQuery2.Open;
  except
  end;
end;

procedure TfrmMain.ADOQuery2AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;
  dbgrid2.Columns.Items[0].Width:=30;
  dbgrid2.Columns.Items[1].Width:=65;
  dbgrid2.Columns.Items[2].Width:=140;
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
begin
  if not ADOQuery1.Active then exit;
  if ADOQuery1.RecordCount<=0 then exit;
  
  if not ADOQuery2.Active then exit;
  if ADOQuery2.RecordCount<=0 then exit;

  if not frReport1.LoadFromFile(ExtractFilePath(application.ExeName)+'DGS9510TestPF.frf') then
  begin
    MESSAGEDLG('���ش�ӡģ��DGS9510TestPF.frfʧ�ܣ�',mtError,[mbOK],0);
    exit;
  end;
  
  frReport1.ShowPrintDialog:=true;
  frReport1.ShowReport;
end;

procedure TfrmMain.ComPort1AfterOpen(Sender: TObject);
begin
  if Assigned(StatusBar1) then StatusBar1.Panels[0].Text:='����'+ComPort1.Port+'�򿪳ɹ�';
end;

procedure TfrmMain.ComPort1AfterClose(Sender: TObject);
begin
  if Assigned(StatusBar1) then StatusBar1.Panels[0].Text:='����'+ComPort1.Port+'�ر�';
end;

procedure TfrmMain.ComPort1Error(Sender: TObject; Errors: TComErrors);
begin
  if Assigned(StatusBar1) then StatusBar1.Panels[0].Text:='����'+ComPort1.Port+'��������';
end;

procedure TfrmMain.ComPort1Exception(Sender: TObject;
  TComException: TComExceptions; ComportMessage: String; WinError: Int64;
  WinMessage: String);
begin
  if Assigned(StatusBar1) then StatusBar1.Panels[0].Text:='����'+ComPort1.Port+'�����쳣';
end;

procedure TfrmMain.SpeedButton7Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
var
  adotemp11:tadoquery;
begin
    if parname='SysTitle' then ParValue:=Panel29.Caption;

    if parname='BenchNo' then ParValue:=ADOQuery1.fieldbyname('ʵ��̨��').AsString;
    if parname='PartNo' then ParValue:=ADOQuery1.fieldbyname('���Ϻ�').AsString;
    if parname='OrderVolt' then ParValue:=ADOQuery1.fieldbyname('������ѹ').AsString;
    if parname='Model' then ParValue:=ADOQuery1.fieldbyname('�ͺ�').AsString;
    if parname='SerialNo' then ParValue:=ADOQuery1.fieldbyname('���к�').AsString;
    if parname='OrderP' then ParValue:=ADOQuery1.fieldbyname('��������').AsString;
    if parname='ExcStatorO' then ParValue:=ADOQuery1.fieldbyname('���Ŷ��ӵ���').AsString;
    if parname='MainStatorO' then ParValue:=ADOQuery1.fieldbyname('�����ӵ���').AsString;
    if parname='OrderHZ' then ParValue:=ADOQuery1.fieldbyname('����Ƶ��').AsString;

    if parname='Remark' then ParValue:=ADOQuery1.fieldbyname('��ע').AsString;
    if parname='HighPotTest' then ParValue:=ADOQuery1.fieldbyname('��ѹ����').AsString;
    if parname='AVRModel' then ParValue:=ADOQuery1.fieldbyname('AVR�ͺ�').AsString;
    if parname='AVRNo' then ParValue:=ADOQuery1.fieldbyname('AVR���').AsString;
    if parname='Tester' then ParValue:=ADOQuery1.fieldbyname('������').AsString;
    if parname='TestDate' then ParValue:=ADOQuery1.fieldbyname('��������').AsString;

      //��ʼ�������ⱨ�����û�и�ֵʱ����begin
      if parname='OutU_UV_0' then ParValue:='';
      if parname='OutU_VW_0' then ParValue:='';
      if parname='OutU_WU_0' then ParValue:='';
      //if parname='OutA_U_0' then ParValue:='';
      //if parname='ActP_Total_0' then ParValue:='';
      //if parname='ReactP_Total_0' then ParValue:='';
      //if parname='PF_Avg_0' then ParValue:='';
      if parname='Exc_V_0' then ParValue:='';
      if parname='Exc_A_0' then ParValue:='';
      if parname='PS_HZ_0' then ParValue:='';

      if parname='OutU_UV_1' then ParValue:='';
      if parname='OutU_VW_1' then ParValue:='';
      if parname='OutU_WU_1' then ParValue:='';
      if parname='OutA_U_1' then ParValue:='';
      if parname='ActP_Total_1' then ParValue:='';
      if parname='ApparentP_Total_1' then ParValue:='';
      if parname='PF_Avg_1' then ParValue:='';
      if parname='Exc_V_1' then ParValue:='';
      if parname='Exc_A_1' then ParValue:='';
      if parname='PS_HZ_1' then ParValue:='';

      if parname='OutU_UV_2' then ParValue:='';
      if parname='OutU_VW_2' then ParValue:='';
      if parname='OutU_WU_2' then ParValue:='';
      if parname='OutA_U_2' then ParValue:='';
      if parname='ActP_Total_2' then ParValue:='';
      if parname='ApparentP_Total_2' then ParValue:='';
      if parname='PF_Avg_2' then ParValue:='';
      if parname='Exc_V_2' then ParValue:='';
      if parname='Exc_A_2' then ParValue:='';
      if parname='PS_HZ_2' then ParValue:='';

      if parname='OutU_UV_3' then ParValue:='';
      if parname='OutU_VW_3' then ParValue:='';
      if parname='OutU_WU_3' then ParValue:='';
      if parname='OutA_U_3' then ParValue:='';
      //if parname='ActP_Total_3' then ParValue:='';
      //if parname='ReactP_Total_3' then ParValue:='';
      //if parname='PF_Avg_3' then ParValue:='';
      //if parname='Exc_V_3' then ParValue:='';
      //if parname='Exc_A_3' then ParValue:='';
      if parname='PS_HZ_3' then ParValue:='';
      //��ʼ�������ⱨ�����û�и�ֵʱ����end

  adotemp11:=tadoquery.Create(nil);
  adotemp11.clone(ADOQuery2);
  while not adotemp11.Eof do
  begin
    if adotemp11.fieldbyname('�ɼ�����').AsString='����' then
    begin
      if parname='OutU_UV_0' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹUV').AsString;
      if parname='OutU_VW_0' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹVW').AsString;
      if parname='OutU_WU_0' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹWU').AsString;
      //if parname='OutA_U_0' then ParValue:=adotemp11.fieldbyname('����U').AsString;
      //if parname='ActP_Total_0' then ParValue:=adotemp11.fieldbyname('���й�����').AsString;
      //if parname='ReactP_Total_0' then ParValue:=adotemp11.fieldbyname('���޹�����').AsString;
      //if parname='PF_Avg_0' then ParValue:=adotemp11.fieldbyname('ƽ����������').AsString;
      if parname='Exc_V_0' then ParValue:=adotemp11.fieldbyname('���ŵ�ѹ').AsString;
      if parname='Exc_A_0' then ParValue:=adotemp11.fieldbyname('���ŵ���').AsString;
      if parname='PS_HZ_0' then ParValue:=adotemp11.fieldbyname('Ƶ��').AsString;
    end;

    if adotemp11.fieldbyname('�ɼ�����').AsString='����PF0.8' then
    begin
      if parname='OutU_UV_1' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹUV').AsString;
      if parname='OutU_VW_1' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹVW').AsString;
      if parname='OutU_WU_1' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹWU').AsString;
      if parname='OutA_U_1' then ParValue:=adotemp11.fieldbyname('����U').AsString;
      if parname='ActP_Total_1' then ParValue:=adotemp11.fieldbyname('���й�����').AsString;
      if parname='ApparentP_Total_1' then ParValue:=adotemp11.fieldbyname('�����ڹ���').AsString;
      if parname='PF_Avg_1' then ParValue:=adotemp11.fieldbyname('ƽ����������').AsString;
      if parname='Exc_V_1' then ParValue:=adotemp11.fieldbyname('���ŵ�ѹ').AsString;
      if parname='Exc_A_1' then ParValue:=adotemp11.fieldbyname('���ŵ���').AsString;
      if parname='PS_HZ_1' then ParValue:=adotemp11.fieldbyname('Ƶ��').AsString;
    end;

    if adotemp11.fieldbyname('�ɼ�����').AsString='����PF1.0' then
    begin
      if parname='OutU_UV_2' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹUV').AsString;
      if parname='OutU_VW_2' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹVW').AsString;
      if parname='OutU_WU_2' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹWU').AsString;
      if parname='OutA_U_2' then ParValue:=adotemp11.fieldbyname('����U').AsString;
      if parname='ActP_Total_2' then ParValue:=adotemp11.fieldbyname('���й�����').AsString;
      if parname='ApparentP_Total_2' then ParValue:=adotemp11.fieldbyname('�����ڹ���').AsString;
      if parname='PF_Avg_2' then ParValue:=adotemp11.fieldbyname('ƽ����������').AsString;
      if parname='Exc_V_2' then ParValue:=adotemp11.fieldbyname('���ŵ�ѹ').AsString;
      if parname='Exc_A_2' then ParValue:=adotemp11.fieldbyname('���ŵ���').AsString;
      if parname='PS_HZ_2' then ParValue:=adotemp11.fieldbyname('Ƶ��').AsString;
    end;

    if adotemp11.fieldbyname('�ɼ�����').AsString='ʣ�ŵ�ѹ' then
    begin
      if parname='OutU_UV_3' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹUV').AsString;
      if parname='OutU_VW_3' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹVW').AsString;
      if parname='OutU_WU_3' then ParValue:=adotemp11.fieldbyname('�ߵ�ѹWU').AsString;
      //if parname='OutA_U_3' then ParValue:=adotemp11.fieldbyname('����U').AsString;
      //if parname='ActP_Total_3' then ParValue:=adotemp11.fieldbyname('���й�����').AsString;
      //if parname='ReactP_Total_3' then ParValue:=adotemp11.fieldbyname('���޹�����').AsString;
      //if parname='PF_Avg_3' then ParValue:=adotemp11.fieldbyname('ƽ����������').AsString;
      //if parname='Exc_V_3' then ParValue:=adotemp11.fieldbyname('���ŵ�ѹ').AsString;
      //if parname='Exc_A_3' then ParValue:=adotemp11.fieldbyname('���ŵ���').AsString;
      if parname='PS_HZ_3' then ParValue:=adotemp11.fieldbyname('Ƶ��').AsString;
    end;

    adotemp11.Next;
  end;

  if parname='PS_Conclusion' then
  BEGIN
    if (adotemp11.fieldbyname('����V').AsFloat>adotemp11.fieldbyname('����U').AsFloat) AND
      (adotemp11.fieldbyname('����V').AsFloat<adotemp11.fieldbyname('����W').AsFloat) THEN
    ParValue:='OK' ELSE ParValue:='BAD';
  END;
  
  adotemp11.Free;
end;

procedure TfrmMain.SpeedButton9Click(Sender: TObject);
begin
  if not ADOQuery2.Active then exit;
  if ADOQuery2.RecordCount<=0 then exit;

  if (MessageDlg('ȷʵҪɾ���ü�¼��',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;
  
  ADOQuery2.Delete;
end;

procedure TfrmMain.DateTimePicker1Change(Sender: TObject);
begin
  updateAdoQuery1;
end;

procedure TfrmMain.DateTimePicker2Change(Sender: TObject);
begin
  updateAdoQuery1;
end;

procedure TfrmMain.SpeedButton10MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ifLoadAdd:=true;
end;

procedure TfrmMain.SpeedButton10MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ifLoadAdd2:=true;
end;

procedure TfrmMain.SpeedButton11MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ifLoadReduce:=true;
end;

procedure TfrmMain.SpeedButton11MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ifLoadReduce2:=true;
end;

procedure TfrmMain.SpeedButton12MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  bSelfDef1:=true;
end;

procedure TfrmMain.SpeedButton12MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  bSelfDef12:=true;
end;

procedure TfrmMain.SpeedButton13MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  bSelfDef2:=true;
end;

procedure TfrmMain.SpeedButton13MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  bSelfDef22:=true;
end;

end.
