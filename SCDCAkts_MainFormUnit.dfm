object SCDCAkts_MainForm: TSCDCAkts_MainForm
  Left = 0
  Top = 0
  Caption = #1040#1082#1090#1099
  ClientHeight = 451
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = SCDCAktsMainMenu
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  DesignSize = (
    826
    451)
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAkts_ContractsDBGridEh: TDBGridEh
    Left = 8
    Top = 8
    Width = 810
    Height = 435
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SCDCAkts_ContractsFDTableDataSource
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SearchPanel.Location = splHorzScrollBarExtraPanelEh
    TabOrder = 0
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'contractId'
        Footers = <>
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'contractNumber'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
        Width = 140
      end
      item
        DynProps = <>
        EditButtons = <
          item
          end>
        FieldName = 'contractDate'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
        Width = 112
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'customerId'
        Footers = <>
        LookupParams.KeyFieldNames = 'customerId'
        LookupParams.LookupDataSet = SCDCAkts_DataModule.CustomersFDTable
        LookupParams.LookupDisplayFieldName = 'customerName'
        LookupParams.LookupKeyFieldNames = 'customerId'
        Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
        Width = 190
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'clientId'
        Footers = <>
        LookupParams.KeyFieldNames = 'clientId'
        LookupParams.LookupDataSet = SCDCAkts_DataModule.ClientsFDTable
        LookupParams.LookupDisplayFieldName = 'clientName'
        LookupParams.LookupKeyFieldNames = 'clientId'
        Title.Caption = #1047#1072#1082#1072#1079#1095#1080#1082
        Width = 233
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
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
      object SubjectSettingMenuItem: TMenuItem
        Caption = #1052#1086#1076#1091#1083#1080
        OnClick = SubjectSettingMenuItemClick
      end
      object ClientSettingMenuItem: TMenuItem
        Caption = #1047#1072#1082#1072#1079#1095#1080#1082#1080
        OnClick = ClientSettingMenuItemClick
      end
      object PersonSettingMenuItem: TMenuItem
        Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1077#1081
        OnClick = PersonSettingMenuItemClick
      end
    end
  end
  object SCDCAkts_MainFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 176
    Top = 24
  end
  object SCDCAkts_ContractsFDTableDataSource: TDataSource
    DataSet = SCDCAkts_DataModule.ContractsFDTable
    Left = 112
    Top = 120
  end
end
