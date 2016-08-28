object SCDCAktsDataModule: TSCDCAktsDataModule
  OldCreateOrder = False
  Height = 232
  Width = 314
  object SCDCAktsFDConnection: TFDConnection
    Params.Strings = (
      'Database=DATABASE\SCDCAKTS.DB'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
end
