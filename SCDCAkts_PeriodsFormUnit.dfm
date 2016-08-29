object SCDCAkts_PeriodsForm: TSCDCAkts_PeriodsForm
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1080#1086#1076#1099' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
  ClientHeight = 672
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
    672)
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAkts_PeriodDBGridEh: TDBGridEh
    Left = 8
    Top = 39
    Width = 1015
    Height = 625
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SCDCAkts_PeriodsFDTableDataSource
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 550
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SearchPanel.Location = splHorzScrollBarExtraPanelEh
    TabOrder = 0
    OnRowDetailPanelShow = SCDCAkts_PeriodDBGridEhRowDetailPanelShow
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
      DesignSize = (
        937
        548)
      object AktsDBGridEh: TDBGridEh
        Left = 8
        Top = 40
        Width = 921
        Height = 498
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = AktsFDQueryDataSource
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
            FieldName = 'aktId'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
            Width = 89
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'periodId'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Caption = #1055#1077#1088#1080#1086#1076
            Visible = False
            Width = 94
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
            Width = 276
          end
          item
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' (BYN)'
            Width = 145
          end
          item
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'laboriousness'
            Footers = <>
            Title.Caption = #1058#1088#1091#1076#1086#1105#1084#1082#1086#1089#1090#1100' ('#1085#1086#1088#1084#1086'/'#1095#1072#1089#1099')'
            Width = 230
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object AktPrintBitBtn: TBitBtn
        Left = 8
        Top = 9
        Width = 89
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000C0C0C05D534A
          44392E483D32483D32483D32483D32483D32483D32483D32483D32483D32483D
          3244392E5D534AC0C0C0C0C0C06F665EE6DDD48F837893877C93877C93877C93
          877C93877C93877C93877C93877C8F8378E6DDD46F665EC0C0C07D746A696058
          F8F2EB53483D594E43594E43594E43594E43594E43594E43594E43594E435348
          3DF8F2EB6960587D746A7D746AC8BCB1C0B5AAC5BDB4C9C3BACAC4BBCAC4BBCA
          C4BBCAC4BBCAC4BBCAC4BBC9C3BAC5BDB4C0B5AAC8BCB17D746A82776ED5CDC3
          F7F7F9E3AC75902300932800932800932800932800932800932800902300E3AC
          75F7F7F9D5CDC382776E867B71E3DEDCF5A12DDB7100DE7800DF7900DF7900DF
          7900DF7900DF7900DF7900DE7800DB7100F5A12DE3DEDC867B718B8175F0EFF0
          FF9400FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF97
          00FF9400F0EFF08B817591857BF8F8FBFF9300FFEBA8FFE9A3FFE9A3FFE9A3FF
          E9A3FFE9A3FFE9A3FFE9A3FFE9A3FFEBA8FF9300F8F8FB91857B91857BF8F8FB
          FF9900555152382D25382D25382D25382D25382D25382D25382D25382D255551
          52FF9900F8F8FB91857BC0C0C0A39D9AFF9B007C7774FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7774FF9B00A39D9AC0C0C0C0C0C0C0C0C0
          C0C0C07F7975FFFFFFF8F5F1F9F5F2F9F5F2F9F5F2F9F6F2F9F6F3FFFFFF7E79
          75C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0887E73FFFFFFFAF8F6FAF8F6FA
          F8F6FAF9F7FEFDFCF2EEEAD5CFC99E9287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C08E8277FFFFFFFCFBFAFCFBFAFCFBFAFFFFFEBE9E9D625A51675E569488
          7DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C092877BFFFFFFFEFEFDFEFEFDFE
          FEFDFFFFFFC88F8FFFFFFFFFFFFFAB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0988C80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9192FFFFFFAB9F94C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A194889D90839C8F829C8F829C
          8F829C90839E9387AB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        TabOrder = 1
        OnClick = AktPrintBitBtnClick
      end
    end
  end
  object AktsPrintBitBtn: TBitBtn
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1086#1074
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000C0C0C05D534A
      44392E483D32483D32483D32483D32483D32483D32483D32483D32483D32483D
      3244392E5D534AC0C0C0C0C0C06F665EE6DDD48F837893877C93877C93877C93
      877C93877C93877C93877C93877C8F8378E6DDD46F665EC0C0C07D746A696058
      F8F2EB53483D594E43594E43594E43594E43594E43594E43594E43594E435348
      3DF8F2EB6960587D746A7D746AC8BCB1C0B5AAC5BDB4C9C3BACAC4BBCAC4BBCA
      C4BBCAC4BBCAC4BBCAC4BBC9C3BAC5BDB4C0B5AAC8BCB17D746A82776ED5CDC3
      F7F7F9E3AC75902300932800932800932800932800932800932800902300E3AC
      75F7F7F9D5CDC382776E867B71E3DEDCF5A12DDB7100DE7800DF7900DF7900DF
      7900DF7900DF7900DF7900DE7800DB7100F5A12DE3DEDC867B718B8175F0EFF0
      FF9400FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF97
      00FF9400F0EFF08B817591857BF8F8FBFF9300FFEBA8FFE9A3FFE9A3FFE9A3FF
      E9A3FFE9A3FFE9A3FFE9A3FFE9A3FFEBA8FF9300F8F8FB91857B91857BF8F8FB
      FF9900555152382D25382D25382D25382D25382D25382D25382D25382D255551
      52FF9900F8F8FB91857BC0C0C0A39D9AFF9B007C7774FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7774FF9B00A39D9AC0C0C0C0C0C0C0C0C0
      C0C0C07F7975FFFFFFF8F5F1F9F5F2F9F5F2F9F5F2F9F6F2F9F6F3FFFFFF7E79
      75C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0887E73FFFFFFFAF8F6FAF8F6FA
      F8F6FAF9F7FEFDFCF2EEEAD5CFC99E9287C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C08E8277FFFFFFFCFBFAFCFBFAFCFBFAFFFFFEBE9E9D625A51675E569488
      7DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C092877BFFFFFFFEFEFDFEFEFDFE
      FEFDFFFFFFC88F8FFFFFFFFFFFFFAB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0988C80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9192FFFFFFAB9F94C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A194889D90839C8F829C8F829C
      8F829C90839E9387AB9F94C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    TabOrder = 1
    OnClick = AktsPrintBitBtnClick
  end
  object SCDCAkts_PeriodsFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 728
  end
  object SCDCAkts_PeriodsFDTableDataSource: TDataSource
    DataSet = PeriodsFDQuery
    Left = 168
    Top = 8
  end
  object DirectorPersonFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from v_directorpersons dp'
      '  where (dp.customerid = :aCustomerId)')
    Left = 344
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
    Left = 584
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
    Left = 464
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
    Left = 240
    ParamData = <
      item
        Name = 'ACONTRACTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object AktsFDQuery: TFDQuery
    OnNewRecord = AktsFDQueryNewRecord
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      'select *'
      '  from akts a'
      '  where (a.periodId = :aPeriodId)')
    Left = 862
    ParamData = <
      item
        Name = 'APERIODID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object AktsFDQueryDataSource: TDataSource
    DataSet = AktsFDQuery
    Left = 960
  end
  object frxAktDBDataset: TfrxDBDataset
    UserName = 'Akts'
    CloseDataSource = True
    DataSet = AktsReportFDQuery
    BCDToCurrency = False
    Left = 182
    Top = 203
  end
  object AktsReportFDQuery: TFDQuery
    Connection = SCDCAkts_DataModule.SCDCAktsFDConnection
    SQL.Strings = (
      
        'select a.aktId, a.aktNumber, a.aktDate, c.contractNumber, c.cont' +
        'ractDate, ct.customerName, ct.customerAccount, ct.customerBank, ' +
        'ct.customerUNP, dp.personPosition, dp.personName, ap.personPosit' +
        'ion, ap.personName, cl.clientName, s.subjectName, a.amount, a.la' +
        'boriousness'
      '  from akts a'
      '  inner join periods p on (p.periodId = a.periodId)'
      '  inner join subjects s on (s.subjectId = a.subjectId)'
      '  inner join contracts c on (c.contractId = p.contractId)'
      '  inner join customers ct on (ct.customerId = c.contractId)'
      '  inner join clients cl on (cl.clientId = c.clientId)'
      '  inner join persons dp on (dp.personId = p.directorId)'
      '  inner join persons ap on (ap.personId = p.assigneeId)'
      '  where (a.aktId = nvl(:aAktId, a.aktId))')
    Left = 278
    Top = 203
    ParamData = <
      item
        Name = 'AAKTID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frxAktReport: TfrxReport
    Version = '5.5'
    DataSet = frxAktDBDataset
    DataSetName = 'Akts'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42611.915991250000000000
    ReportOptions.LastChange = 42611.943119178200000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 94
    Top = 203
  end
end
