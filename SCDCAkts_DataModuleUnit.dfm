object SCDCAkts_DataModule: TSCDCAkts_DataModule
  OldCreateOrder = False
  Height = 456
  Width = 755
  object SCDCAktsFDConnection: TFDConnection
    Params.Strings = (
      'Database=DATABASE\SCDCAKTS.DB'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 72
    Top = 24
  end
  object CustomersFDTable: TFDTable
    IndexFieldNames = 'customerId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'customers'
    TableName = 'customers'
    Left = 72
    Top = 80
  end
  object SubjectsFDTable: TFDTable
    IndexFieldNames = 'subjectId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'subjects'
    TableName = 'subjects'
    Left = 72
    Top = 136
  end
  object ClientsFDTable: TFDTable
    IndexFieldNames = 'clientId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'clients'
    TableName = 'clients'
    Left = 72
    Top = 192
  end
  object PersonsFDTable: TFDTable
    IndexFieldNames = 'personId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'persons'
    TableName = 'persons'
    Left = 72
    Top = 248
  end
  object PersonTypeRefsFDTable: TFDTable
    IndexFieldNames = 'personTypeId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'persontyperefs'
    TableName = 'persontyperefs'
    Left = 72
    Top = 304
  end
end
