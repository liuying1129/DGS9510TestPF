unit UfrmLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, DBCtrls, Grids,
  DBGrids, ADODB, DosMove,inifiles, ActnList, jpeg;

type
  TfrmLogin = class(TForm)
    DosMove1: TDosMove;
    suiForm1: TPanel;
    LabeledEdit2: TLabeledEdit;
    suiButton3: TBitBtn;
    suiButton4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function  frmLogin: TfrmLogin;

implementation

var
  ffrmLogin: TfrmLogin;

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
function  frmLogin: TfrmLogin;        {动态创建窗体函数}
begin
  if ffrmLogin=nil then ffrmLogin:=TfrmLogin.Create(application.mainform);
  result:=ffrmLogin;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmLogin=self then ffrmLogin:=nil;
end;
////////////////////////////////////////////////////////////////////////////////

procedure TfrmLogin.suiButton3Click(Sender: TObject);
const
  PWD='FDJ666666';
begin
  if uppercase(trim(LabeledEdit2.Text))<>PWD then
  begin
      messagedlg('密码错误！',mtError,[mbok],0);    
      LabeledEdit2.SetFocus;
  end
  else   //成功登录
  begin
    close;
  end;
end;

procedure TfrmLogin.suiButton4Click(Sender: TObject);
begin
  application.Terminate;
end;

initialization
  ffrmLogin:=nil;

end.
