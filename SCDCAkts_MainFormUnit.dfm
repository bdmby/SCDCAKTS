object SCDCAkts_MainForm: TSCDCAkts_MainForm
  Left = 0
  Top = 0
  Caption = #1040#1082#1090#1099
  ClientHeight = 565
  ClientWidth = 914
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
    914
    565)
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAkts_ContractsDBGridEh: TDBGridEh
    Left = 8
    Top = 8
    Width = 898
    Height = 549
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataGrouping.Active = True
    DataSource = SCDCAkts_ContractsFDTableDataSource
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 200
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SearchPanel.Location = splHorzScrollBarExtraPanelEh
    TabOrder = 0
    OnRowDetailPanelShow = SCDCAkts_ContractsDBGridEhRowDetailPanelShow
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
        Width = 312
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object SCDCAkts_Contract2SubjectDBGridEh: TDBGridEh
        Left = 8
        Top = 8
        Width = 817
        Height = 177
        DataSource = SCDCAkts_Contract2SubjectFDQueryDataSource
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        ParentShowHint = False
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SearchPanel.Location = splHorzScrollBarExtraPanelEh
        ShowHint = False
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'contract2subjectId'
            Footers = <>
            ReadOnly = True
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
            Width = 93
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'subjectId'
            Footers = <>
            LookupParams.KeyFieldNames = 'subjectId'
            LookupParams.LookupDataSet = SCDCAkts_DataModule.SubjectsFDTable
            LookupParams.LookupDisplayFieldName = 'subjectName'
            LookupParams.LookupKeyFieldNames = 'subjectId'
            Title.Caption = #1052#1086#1076#1091#1083#1100
            Width = 465
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'contractId'
            Footers = <>
            ReadOnly = True
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object SCDCAktsMainMenu: TMainMenu
    Left = 56
    Top = 464
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
    Left = 280
    Top = 472
  end
  object SCDCAkts_ContractsFDTableDataSource: TDataSource
    DataSet = SCDCAkts_DataModule.ContractsFDTable
    Left = 152
    Top = 336
  end
  object SCDCAkts_Contract2SubjectFDQuery: TFDQuery
    OnNewRecord = SCDCAkts_Contract2SubjectFDQueryNewRecord
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select c2s.contract2subjectId, c2s.contractid, c2s.subjectId'
      '  from contract2subjects c2s'
      '  where (c2s.contractId = :aContractId)')
    Left = 582
    Top = 123
    ParamData = <
      item
        Name = 'ACONTRACTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SCDCAkts_Contract2SubjectFDQueryDataSource: TDataSource
    DataSet = SCDCAkts_Contract2SubjectFDQuery
    Left = 334
    Top = 123
  end
end
