object DM: TDM
  OldCreateOrder = True
  Height = 201
  Width = 389
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'tugas1'
    Username = 'root'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 224
    Top = 8
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 280
    Top = 8
  end
  object UniStoredProc1: TUniStoredProc
    Connection = UniConnection1
    Left = 344
    Top = 16
  end
end
