object SCDCAkts_DataModule: TSCDCAkts_DataModule
  OldCreateOrder = False
  Height = 195
  Width = 385
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
    Left = 184
    Top = 136
  end
  object PersonsFDTable: TFDTable
    IndexFieldNames = 'personId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'persons'
    TableName = 'persons'
    Left = 296
    Top = 136
  end
  object PersonTypeRefsFDTable: TFDTable
    IndexFieldNames = 'personTypeId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'persontyperefs'
    TableName = 'persontyperefs'
    Left = 296
    Top = 80
  end
  object ContractsFDTable: TFDTable
    BeforeDelete = ContractsFDTableBeforeDelete
    IndexFieldNames = 'contractId'
    Connection = SCDCAktsFDConnection
    UpdateOptions.UpdateTableName = 'contracts'
    TableName = 'contracts'
    Left = 184
    Top = 80
  end
end
