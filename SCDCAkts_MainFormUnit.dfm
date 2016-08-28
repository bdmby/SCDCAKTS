object SCDCAkts_MainForm: TSCDCAkts_MainForm
  Left = 0
  Top = 0
  Caption = #1040#1082#1090#1099
  ClientHeight = 425
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = SCDCAktsMainMenu
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAktsMainMenu: TMainMenu
    Left = 48
    Top = 24
    object FileMenuItem: TMenuItem
      Caption = #1060#1072#1081#1083
      object ExitProgramMenuItem: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = ExitProgramMenuItemClick
      end
    end
    object SettingsMenuItem: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object CustomerSettingMenuItem: TMenuItem
        Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
        OnClick = CustomerSettingMenuItemClick
      end
      object SubjectsMenuItem: TMenuItem
        Caption = #1047#1072#1082#1072#1079#1095#1080#1082#1080
        OnClick = SubjectsMenuItemClick
      end
    end
  end
  object SCDCAkts_MainFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 80
    Top = 88
  end
end
