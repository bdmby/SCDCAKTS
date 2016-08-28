object SCDCAkts_CustomerSettingForm: TSCDCAkts_CustomerSettingForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081
  ClientHeight = 305
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    767
    305)
  PixelsPerInch = 96
  TextHeight = 13
  object CustomersDBGridEh: TDBGridEh
    Left = 8
    Top = 8
    Width = 751
    Height = 289
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = CustomersDataSource
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
        FieldName = 'customerId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 94
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'customerName'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 202
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'customerUNP'
        Footers = <>
        Title.Caption = #1059#1053#1055
        Width = 76
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'customerAccount'
        Footers = <>
        Title.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'customerBank'
        Footers = <>
        Title.Caption = #1041#1072#1085#1082
        Width = 283
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SCDCAkts_CustomerSettingFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 128
    Top = 64
  end
  object CustomersDataSource: TDataSource
    DataSet = SCDCAktsDataModule.CustomersFDTable
    Left = 128
    Top = 128
  end
end
