object frmLogin: TfrmLogin
  Left = 211
  Top = 224
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = #30331#24405
  ClientHeight = 247
  ClientWidth = 367
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object suiForm1: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 247
    Align = alClient
    BevelInner = bvRaised
    BorderWidth = 1
    Color = 16767438
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LabeledEdit2: TLabeledEdit
      Left = 159
      Top = 82
      Width = 120
      Height = 19
      Ctl3D = False
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = #21475'    '#20196#65306
      LabelPosition = lpLeft
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 0
    end
    object suiButton3: TBitBtn
      Left = 73
      Top = 157
      Width = 80
      Height = 27
      Caption = #30830#23450
      TabOrder = 1
      OnClick = suiButton3Click
    end
    object suiButton4: TBitBtn
      Left = 205
      Top = 157
      Width = 80
      Height = 27
      Caption = #36864#20986
      TabOrder = 2
      OnClick = suiButton4Click
    end
  end
  object DosMove1: TDosMove
    Active = True
    Left = 312
    Top = 56
  end
end
