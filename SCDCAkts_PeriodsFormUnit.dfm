object SCDCAkts_PeriodsForm: TSCDCAkts_PeriodsForm
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1080#1086#1076#1099' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
  ClientHeight = 557
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  DesignSize = (
    1031
    557)
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAkts_PeriodDBGridEh: TDBGridEh
    Left = 8
    Top = 40
    Width = 1015
    Height = 509
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SCDCAkts_PeriodsFDTableDataSource
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
        FieldName = 'periodId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 91
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'contractId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
        Visible = False
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'periodName'
        Footers = <>
        Title.Caption = #1055#1077#1088#1080#1086#1076
        Width = 159
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'directorId'
        Footers = <>
        LookupParams.KeyFieldNames = 'directorId'
        LookupParams.LookupDataSet = DirectorPersonFDQuery
        LookupParams.LookupDisplayFieldName = 'directorName'
        LookupParams.LookupKeyFieldNames = 'directorId'
        Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Width = 321
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'assigneeId'
        Footers = <>
        LookupParams.KeyFieldNames = 'assigneeId'
        LookupParams.LookupDataSet = AssigneePersonFDQuery
        LookupParams.LookupDisplayFieldName = 'assigneeName'
        LookupParams.LookupKeyFieldNames = 'assigneeId'
        Title.Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100
        Width = 383
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SCDCAkts_PeriodsFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 280
    Top = 328
  end
  object SCDCAkts_PeriodsFDTableDataSource: TDataSource
    DataSet = PeriodsFDQuery
    Left = 88
    Top = 328
  end
  object DirectorPersonFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from v_directorpersons dp'
      '  where (dp.customerid = :aCustomerId)')
    Left = 328
    Top = 72
    ParamData = <
      item
        Name = 'ACUSTOMERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object AssigneePersonFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from v_assigneepersons ap'
      '  where (ap.customerId = :aCustomerId)')
    Left = 648
    Top = 64
    ParamData = <
      item
        Name = 'ACUSTOMERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object GetCustomerFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select c.customerId'
      '  from contracts c'
      '  where (c.contractId = :aContractId)')
    Left = 184
    Top = 288
    ParamData = <
      item
        Name = 'ACONTRACTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PeriodsFDQuery: TFDQuery
    OnNewRecord = PeriodsFDQueryNewRecord
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from periods p'
      '  where (p.contractId = :aContractId)')
    Left = 184
    Top = 392
    ParamData = <
      item
        Name = 'ACONTRACTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
