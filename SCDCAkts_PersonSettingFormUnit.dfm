object SCDCAkts_PersonSettingForm: TSCDCAkts_PersonSettingForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  ClientHeight = 436
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    930
    436)
  PixelsPerInch = 96
  TextHeight = 13
  object SCDCAkts_PersonSettingDBGridEh: TDBGridEh
    Left = 8
    Top = 8
    Width = 914
    Height = 420
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SCDCAkts_PersonSettingDataSource
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
        FieldName = 'personId'
        Footers = <>
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 92
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'personName'
        Footers = <>
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103', '#1048#1084#1103', '#1054#1090#1095#1077#1089#1090#1074#1086
        Width = 185
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'personPosition'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 216
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'personTypeId'
        Footers = <>
        LookupDisplayFields = 'persontypename'
        LookupParams.KeyFieldNames = 'personTypeId'
        LookupParams.LookupDataSet = SCDCAkts_DataModule.PersonTypeRefsFDTable
        LookupParams.LookupDisplayFieldName = 'personTypeName'
        LookupParams.LookupKeyFieldNames = 'personTypeId'
        Title.Caption = #1058#1080#1087' '#1089#1074#1103#1079#1080
        Width = 147
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
        Title.Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Width = 231
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SCDCAkts_PeronSettingFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 128
    Top = 192
  end
  object SCDCAkts_PersonSettingDataSource: TDataSource
    DataSet = SCDCAkts_DataModule.PersonsFDTable
    Left = 128
    Top = 136
  end
end
