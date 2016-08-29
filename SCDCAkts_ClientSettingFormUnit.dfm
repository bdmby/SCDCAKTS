object SCDCAkts_ClientSettingForm: TSCDCAkts_ClientSettingForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 427
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    811
    427)
  PixelsPerInch = 96
  TextHeight = 13
  object ClientSettingDBGridEh: TDBGridEh
    Left = 8
    Top = 8
    Width = 795
    Height = 411
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SCDSAkts_ClientSettingDataSource
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
        FieldName = 'clientId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 102
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'clientName'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 648
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SCDSAkts_ClientSettingDataSource: TDataSource
    DataSet = SCDCAkts_DataModule.ClientsFDTable
    Left = 160
    Top = 152
  end
  object SCDCAkts_ClientSettingFormStorage: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 120
    Top = 56
  end
end
