object MainForm: TMainForm
  Left = 443
  Top = 318
  Width = 1079
  Height = 632
  Caption = 'PrTask17'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TSplitter
    Left = 521
    Top = 0
    Width = 8
    Height = 574
  end
  object InBox: TGroupBox
    Left = 0
    Top = 0
    Width = 521
    Height = 574
    Align = alLeft
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1092#1072#1081#1083
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Input: TMemo
      Left = 2
      Top = 21
      Width = 517
      Height = 551
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object OutBox: TGroupBox
    Left = 529
    Top = 0
    Width = 534
    Height = 574
    Align = alClient
    Caption = #1054#1090#1074#1077#1090':'
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Output: TMemo
      Left = 2
      Top = 21
      Width = 530
      Height = 551
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Open: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 176
    Top = 512
  end
  object Save: TSaveDialog
    FileName = 'C:\Users\Tolik\Desktop\PrTask17\gg'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt'
    Left = 224
    Top = 512
  end
  object Menu: TMainMenu
    Left = 272
    Top = 512
    object Fail: TMenuItem
      Caption = #1060#1072#1081#1083
      object Openn: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100'...'
        OnClick = OpennClick
      end
      object Savee: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1090#1074#1077#1090' '#1074' '#1086#1090#1082#1088#1090#1099#1081' '#1092#1072#1081#1083
        OnClick = SaveeClick
      end
      object SaveAs: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1086#1090#1074#1077#1090#1072
        OnClick = SaveAsClick
      end
      object Exitt: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = ExittClick
      end
    end
    object Prog: TMenuItem
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      object Comp: TMenuItem
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        OnClick = CompClick
      end
      object ClearWin: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1086#1082#1085#1086' '#1074#1099#1074#1086#1076#1072' '#1086#1090#1074#1077#1090#1072
        OnClick = ClearWinClick
      end
    end
  end
end
