object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 431
  Width = 548
  object UniConnection1: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.Direct=True'
      'Oracle.UseUnicode=True')
    Username = 'ex'
    Server = '93.188.8.18:1521:sn=orcldb'
    Connected = True
    ConnectDialog = UniConnectDialog1
    LoginPrompt = False
    Left = 48
    Top = 40
    EncryptedPassword = '99FF9CFF9CFFBCFF9EFF91FF9EFF9BFF9EFFCCFFCBFF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 152
    Top = 40
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 288
    Top = 40
  end
end
