object frmMain: TfrmMain
  Left = 183
  Top = 80
  Width = 900
  Height = 600
  Caption = #26234#33021#27979#35797
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 542
    Width = 884
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Text = #25805#20316#20154#21592#24037#21495':'
        Width = 82
      end
      item
        Width = 50
      end
      item
        Text = #25805#20316#20154#21592#22995#21517':'
        Width = 82
      end
      item
        Width = 50
      end>
  end
  object Panel30: TPanel
    Left = 0
    Top = 40
    Width = 249
    Height = 502
    Align = alLeft
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 176
      Top = 2
      Width = 70
      Height = 40
      Caption = #26032#27979#35797#21333
      OnClick = BitBtn6Click
    end
    object SpeedButton2: TSpeedButton
      Left = 176
      Top = 82
      Width = 70
      Height = 40
      Caption = #21024#38500#27979#35797#21333
      OnClick = BitBtn7Click
    end
    object SpeedButton3: TSpeedButton
      Left = 176
      Top = 154
      Width = 70
      Height = 40
      Caption = #23457#26680
      Visible = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 176
      Top = 194
      Width = 70
      Height = 40
      Caption = #21462#28040#23457#26680
      Visible = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton6: TSpeedButton
      Left = 176
      Top = 261
      Width = 70
      Height = 40
      Caption = #25171#21360
      OnClick = SpeedButton6Click
    end
    object LabeledEdit6: TLabeledEdit
      Left = 84
      Top = 3
      Width = 90
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = #23454#39564#21488#21495
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object LabeledEdit7: TLabeledEdit
      Left = 84
      Top = 26
      Width = 90
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = #29289#26009#21495
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object LabeledEdit8: TLabeledEdit
      Left = 84
      Top = 49
      Width = 90
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = #35746#21333#30005#21387
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object LabeledEdit9: TLabeledEdit
      Left = 84
      Top = 72
      Width = 90
      Height = 21
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = #22411#21495
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object LabeledEdit10: TLabeledEdit
      Left = 84
      Top = 95
      Width = 90
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = #24207#21015#21495
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object LabeledEdit11: TLabeledEdit
      Left = 84
      Top = 119
      Width = 90
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = #35746#21333#21151#29575
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object LabeledEdit12: TLabeledEdit
      Left = 84
      Top = 142
      Width = 90
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = #21169#30913#23450#23376#30005#38459
      LabelPosition = lpLeft
      TabOrder = 6
    end
    object LabeledEdit13: TLabeledEdit
      Left = 84
      Top = 165
      Width = 90
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #20027#23450#23376#30005#38459
      LabelPosition = lpLeft
      TabOrder = 7
    end
    object LabeledEdit14: TLabeledEdit
      Left = 84
      Top = 188
      Width = 90
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = #35746#21333#39057#29575
      LabelPosition = lpLeft
      TabOrder = 8
    end
    object LabeledEdit15: TLabeledEdit
      Left = 84
      Top = 212
      Width = 90
      Height = 21
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = #22791#27880
      LabelPosition = lpLeft
      TabOrder = 9
    end
    object LabeledEdit16: TLabeledEdit
      Left = 84
      Top = 235
      Width = 90
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = #39640#21387#27979#35797
      LabelPosition = lpLeft
      TabOrder = 10
    end
    object LabeledEdit17: TLabeledEdit
      Left = 84
      Top = 258
      Width = 90
      Height = 21
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'AVR'#22411#21495
      LabelPosition = lpLeft
      TabOrder = 11
    end
    object LabeledEdit18: TLabeledEdit
      Left = 84
      Top = 281
      Width = 90
      Height = 21
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'AVR'#32534#21495
      LabelPosition = lpLeft
      TabOrder = 12
    end
    object BitBtn14: TBitBtn
      Left = 176
      Top = 42
      Width = 70
      Height = 40
      Caption = #20445#23384#27979#35797#21333
      TabOrder = 13
      OnClick = BitBtn14Click
    end
    object GroupBox7: TGroupBox
      Left = 1
      Top = 321
      Width = 247
      Height = 180
      Align = alBottom
      Caption = #21442#25968#35774#32622
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      object Label31: TLabel
        Left = 186
        Top = 116
        Width = 49
        Height = 13
        Caption = 'Label31'
      end
      object Label30: TLabel
        Left = 186
        Top = 91
        Width = 52
        Height = 13
        Caption = #21151#29575#22240#25968
      end
      object Label32: TLabel
        Left = 186
        Top = 67
        Width = 49
        Height = 13
        Caption = 'Label31'
      end
      object Label33: TLabel
        Left = 186
        Top = 43
        Width = 49
        Height = 13
        Caption = 'Label31'
      end
      object Label34: TLabel
        Left = 186
        Top = 19
        Width = 49
        Height = 13
        Caption = 'Label31'
      end
      object BitBtn1: TBitBtn
        Left = 147
        Top = 112
        Width = 35
        Height = 21
        Caption = #35774#32622
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object LabeledEdit1: TLabeledEdit
        Left = 86
        Top = 16
        Width = 60
        Height = 21
        EditLabel.Width = 73
        EditLabel.Height = 13
        EditLabel.Caption = #39069#23450#30005#21387'(V)'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object LabeledEdit2: TLabeledEdit
        Left = 86
        Top = 40
        Width = 60
        Height = 21
        EditLabel.Width = 80
        EditLabel.Height = 13
        EditLabel.Caption = #39069#23450#39057#29575'(Hz)'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object LabeledEdit3: TLabeledEdit
        Left = 86
        Top = 64
        Width = 60
        Height = 21
        EditLabel.Width = 80
        EditLabel.Height = 13
        EditLabel.Caption = #39069#23450#21151#29575'(kW)'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object LabeledEdit4: TLabeledEdit
        Left = 86
        Top = 88
        Width = 60
        Height = 21
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.Caption = #21151#29575#22240#25968
        LabelPosition = lpLeft
        TabOrder = 4
      end
      object LabeledEdit5: TLabeledEdit
        Left = 86
        Top = 112
        Width = 60
        Height = 21
        EditLabel.Width = 68
        EditLabel.Height = 13
        EditLabel.Caption = 'CT'#21464#27604'(/5)'
        LabelPosition = lpLeft
        TabOrder = 5
      end
      object BitBtn10: TBitBtn
        Left = 147
        Top = 88
        Width = 35
        Height = 21
        Caption = #35774#32622
        TabOrder = 6
      end
      object BitBtn11: TBitBtn
        Left = 147
        Top = 64
        Width = 35
        Height = 21
        Caption = #35774#32622
        TabOrder = 7
        OnClick = BitBtn11Click
      end
      object BitBtn12: TBitBtn
        Left = 147
        Top = 40
        Width = 35
        Height = 21
        Caption = #35774#32622
        TabOrder = 8
        OnClick = BitBtn12Click
      end
      object BitBtn13: TBitBtn
        Left = 147
        Top = 16
        Width = 35
        Height = 21
        Caption = #35774#32622
        TabOrder = 9
        OnClick = BitBtn13Click
      end
      object BitBtn2: TBitBtn
        Left = 8
        Top = 135
        Width = 230
        Height = 40
        Caption = #35835#21462#21442#25968
        TabOrder = 10
        OnClick = BitBtn2Click
      end
    end
  end
  object Panel32: TPanel
    Left = 249
    Top = 40
    Width = 135
    Height = 502
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 133
      Height = 285
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 286
      Width = 133
      Height = 170
      Align = alBottom
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
    end
    object Panel34: TPanel
      Left = 1
      Top = 456
      Width = 133
      Height = 45
      Align = alBottom
      TabOrder = 2
      object SpeedButton9: TSpeedButton
        Left = 10
        Top = 3
        Width = 40
        Height = 40
        Caption = #21024#38500
        OnClick = SpeedButton9Click
      end
    end
  end
  object Panel31: TPanel
    Left = 384
    Top = 40
    Width = 500
    Height = 502
    Align = alRight
    TabOrder = 3
    object Label26: TLabel
      Left = 55
      Top = 475
      Width = 73
      Height = 13
      Caption = #21169#30913#30005#21387'(V)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 257
      Top = 475
      Width = 73
      Height = 13
      Caption = #21169#30913#30005#27969'(A)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 101
      Top = 16
      Width = 99
      Height = 13
      Caption = #24403#21069#27979#35797#36127#33655'(%)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 7
      Top = 2
      Width = 40
      Height = 40
      Caption = #37319#38598
      OnClick = SpeedButton5Click
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 45
      Width = 490
      Height = 75
      Caption = #36755#20986#30005#21387'(V)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 37
        Top = 17
        Width = 14
        Height = 13
        Caption = 'UV'
      end
      object Label2: TLabel
        Left = 116
        Top = 17
        Width = 14
        Height = 13
        Caption = 'VW'
      end
      object Label3: TLabel
        Left = 197
        Top = 17
        Width = 14
        Height = 13
        Caption = 'WU'
      end
      object Label4: TLabel
        Left = 280
        Top = 17
        Width = 7
        Height = 13
        Caption = 'U'
      end
      object Label5: TLabel
        Left = 359
        Top = 17
        Width = 7
        Height = 13
        Caption = 'V'
      end
      object Label6: TLabel
        Left = 441
        Top = 17
        Width = 7
        Height = 13
        Caption = 'W'
      end
      object Panel1: TPanel
        Left = 7
        Top = 32
        Width = 75
        Height = 30
        Caption = '0'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 87
        Top = 32
        Width = 75
        Height = 30
        Caption = '0'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 167
        Top = 32
        Width = 75
        Height = 30
        Caption = '0'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel4: TPanel
        Left = 247
        Top = 32
        Width = 75
        Height = 30
        Caption = '0'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel5: TPanel
        Left = 327
        Top = 32
        Width = 75
        Height = 30
        Caption = '0'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel6: TPanel
        Left = 407
        Top = 32
        Width = 75
        Height = 30
        Caption = '0'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 7
      Top = 126
      Width = 490
      Height = 60
      Caption = #36755#20986#30005#27969'(A)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label10: TLabel
        Left = 14
        Top = 28
        Width = 7
        Height = 13
        Caption = 'U'
      end
      object Label11: TLabel
        Left = 197
        Top = 28
        Width = 7
        Height = 13
        Caption = 'V'
      end
      object Label12: TLabel
        Left = 391
        Top = 28
        Width = 7
        Height = 13
        Caption = 'W'
      end
      object Panel10: TPanel
        Left = 30
        Top = 19
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 213
        Top = 19
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel12: TPanel
        Left = 407
        Top = 19
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 7
      Top = 192
      Width = 490
      Height = 60
      Caption = #26377#21151#29575'(KW)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label7: TLabel
        Left = 15
        Top = 27
        Width = 7
        Height = 13
        Caption = 'U'
      end
      object Label8: TLabel
        Left = 127
        Top = 27
        Width = 7
        Height = 13
        Caption = 'V'
      end
      object Label9: TLabel
        Left = 233
        Top = 27
        Width = 7
        Height = 13
        Caption = 'W'
      end
      object Label13: TLabel
        Left = 354
        Top = 27
        Width = 52
        Height = 13
        Caption = #24635#26377#21151#29575
      end
      object Panel7: TPanel
        Left = 31
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel8: TPanel
        Left = 143
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel9: TPanel
        Left = 249
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel13: TPanel
        Left = 408
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox4: TGroupBox
      Left = 7
      Top = 260
      Width = 490
      Height = 60
      Caption = #26080#21151#29575'(Kvar)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label14: TLabel
        Left = 15
        Top = 26
        Width = 7
        Height = 13
        Caption = 'U'
      end
      object Label15: TLabel
        Left = 127
        Top = 26
        Width = 7
        Height = 13
        Caption = 'V'
      end
      object Label16: TLabel
        Left = 233
        Top = 26
        Width = 7
        Height = 13
        Caption = 'W'
      end
      object Label17: TLabel
        Left = 353
        Top = 26
        Width = 52
        Height = 13
        Caption = #24635#26080#21151#29575
      end
      object Panel14: TPanel
        Left = 31
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel15: TPanel
        Left = 143
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel16: TPanel
        Left = 249
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel17: TPanel
        Left = 407
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox5: TGroupBox
      Left = 7
      Top = 328
      Width = 490
      Height = 60
      Caption = #21151#29575#22240#25968
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label18: TLabel
        Left = 14
        Top = 27
        Width = 7
        Height = 13
        Caption = 'U'
      end
      object Label19: TLabel
        Left = 126
        Top = 27
        Width = 7
        Height = 13
        Caption = 'V'
      end
      object Label20: TLabel
        Left = 233
        Top = 27
        Width = 7
        Height = 13
        Caption = 'W'
      end
      object Label21: TLabel
        Left = 325
        Top = 27
        Width = 78
        Height = 13
        Caption = #24179#22343#21151#29575#22240#25968
      end
      object Panel18: TPanel
        Left = 30
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel19: TPanel
        Left = 142
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel20: TPanel
        Left = 249
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel21: TPanel
        Left = 406
        Top = 18
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox6: TGroupBox
      Left = 7
      Top = 398
      Width = 490
      Height = 60
      Caption = #30456#24207
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label22: TLabel
        Left = 14
        Top = 26
        Width = 7
        Height = 13
        Caption = 'U'
      end
      object Label23: TLabel
        Left = 126
        Top = 26
        Width = 7
        Height = 13
        Caption = 'V'
      end
      object Label24: TLabel
        Left = 232
        Top = 26
        Width = 7
        Height = 13
        Caption = 'W'
      end
      object Label25: TLabel
        Left = 349
        Top = 26
        Width = 54
        Height = 13
        Caption = #39057#29575'(HZ)'
      end
      object Panel22: TPanel
        Left = 30
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel23: TPanel
        Left = 142
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel24: TPanel
        Left = 248
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel25: TPanel
        Left = 405
        Top = 17
        Width = 75
        Height = 30
        Caption = '0.00'
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object Panel26: TPanel
      Left = 130
      Top = 466
      Width = 75
      Height = 30
      Caption = '0.00'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Panel27: TPanel
      Left = 334
      Top = 466
      Width = 75
      Height = 30
      Caption = '0.00'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Panel28: TPanel
      Left = 203
      Top = 7
      Width = 75
      Height = 30
      Caption = '0.00'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object BitBtn4: TBitBtn
      Left = 376
      Top = 2
      Width = 60
      Height = 40
      Caption = #36127#36733#21152
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object BitBtn5: TBitBtn
      Left = 436
      Top = 2
      Width = 60
      Height = 40
      Caption = #36127#36733#20943
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object Panel29: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 40
    Align = alTop
    Caption = #21457#30005#26426#26234#33021#27979#35797#31995#32479
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -27
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object ComLed1: TComLed
      Left = 193
      Top = 9
      Width = 25
      Height = 25
      Hint = #25509#25910#25968#25454#25351#31034#28783
      ComPort = ComPort1
      LedSignal = LsRx
      Kind = LkRedLight
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton8: TSpeedButton
      Left = 3
      Top = 2
      Width = 36
      Height = 36
      Caption = #25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton8Click
    end
    object cbCOMM: TComboBox
      Left = 69
      Top = 11
      Width = 65
      Height = 21
      Hint = #36873#25321#20018#21475
      BevelKind = bkFlat
      Color = clInfoBk
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'COM1'
      OnChange = cbCOMMChange
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4')
    end
    object Edit1: TSpinEdit
      Left = 143
      Top = 10
      Width = 40
      Height = 22
      Color = clInfoBk
      Ctl3D = False
      EditorEnabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      MaxValue = 32
      MinValue = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Value = 1
    end
    object Panel33: TPanel
      Left = 698
      Top = 1
      Width = 185
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object SpeedButton7: TSpeedButton
        Left = 148
        Top = 2
        Width = 36
        Height = 36
        Caption = #36864#20986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton7Click
      end
    end
  end
  object TimerRefreshShow: TTimer
    Interval = 320
    OnTimer = TimerRefreshShowTimer
    Left = 258
    Top = 182
  end
  object TimerGetData: TTimer
    Interval = 320
    OnTimer = TimerGetDataTimer
    Left = 290
    Top = 182
  end
  object ComPort1: TComPort
    BaudRate = Br9600
    Port = 'COM1'
    Parity.Bits = PrNone
    StopBits = SbOneStopBit
    DataBits = DbEight
    Events = [EvRxChar, EvTxEmpty, EvRxFlag, EvRing, EvBreak, EvCTS, EvDSR, EvError, EvRLSD, EvRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = DtrDisable
    FlowControl.ControlRTS = RtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [SpBasic]
    TriggersOnRxChar = False
    OnAfterOpen = ComPort1AfterOpen
    OnAfterClose = ComPort1AfterClose
    OnError = ComPort1Error
    OnException = ComPort1Exception
    Left = 288
    Top = 216
  end
  object ComDataPacket1: TComDataPacket
    ComPort = ComPort1
    IncludeStrings = True
    OnPacket = ComDataPacket1Packet
    Left = 320
    Top = 216
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 256
    Top = 138
  end
  object ADOQuery1: TADOQuery
    AfterOpen = ADOQuery1AfterOpen
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    Left = 288
    Top = 138
  end
  object ADOQuery2: TADOQuery
    AfterOpen = ADOQuery2AfterOpen
    Parameters = <>
    Left = 304
    Top = 445
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 272
    Top = 445
  end
  object DosMove1: TDosMove
    Active = True
    Left = 353
    Top = 146
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = frReport1GetValue
    Left = 313
    Top = 288
    ReportForm = {19000000}
  end
end
