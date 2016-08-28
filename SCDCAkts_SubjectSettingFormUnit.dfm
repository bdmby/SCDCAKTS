object SCDCAkts_SubjectSettingForm: TSCDCAkts_SubjectSettingForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1047#1072#1082#1072#1079#1095#1080#1082#1086#1074
  ClientHeight = 300
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    786
    300)
  PixelsPerInch = 96
  TextHeight = 13
  object SubjectDBGridEh: TDBGridEh
    Left = 8
    Top = 8
    Width = 770
    Height = 284
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = SubjectDataSource
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SearchPanel.Location = splHorzScrollBarExtraPanelEh
    TabOrder = 0
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'subjectId'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
        Width = 97
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'subjectName'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 639
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object SCDCAkts_SubjectSettingFormStorage: TFormStorage
    StoredValues = <>
    Left = 120
    Top = 80
  end
  object SubjectDataSource: TDataSource
    DataSet = SubjectsFDTable
    Left = 192
    Top = 136
  end
  object SubjectsFDTable: TFDTable
    Active = True
    IndexFieldNames = 'subjectId'
    Connection = SCDCAktsDataModule.SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'subjects'
    TableName = 'subjects'
    Left = 288
    Top = 136
  end
end
