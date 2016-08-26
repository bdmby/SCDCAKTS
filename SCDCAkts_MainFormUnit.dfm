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
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBVertGridEh1: TDBVertGridEh
    Left = 240
    Top = 64
    Width = 300
    Height = 120
    AllowedSelections = []
    RowCategories.CategoryProps = <>
    PrintService.ColorSchema = pcsFullColorEh
    DataSource = DataSource1
    DrawGraphicData = True
    DrawMemoText = True
    TabOrder = 0
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 424
    Top = 328
    Width = 249
    Height = 21
    DynProps = <>
    DataField = ''
    EditButtons = <>
    KeyField = 'customerid'
    ListSource = DataSource1
    TabOrder = 1
    Visible = True
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'Database=D:\GitHub\SCDCAKTS\DATABASE\SCDCAKTS.db')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from customers')
    Left = 152
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 216
    Top = 248
  end
end
