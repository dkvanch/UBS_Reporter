object frmUsers: TfrmUsers
  Left = 0
  Top = 0
  Caption = #4320#4308#4306#4312#4321#4322#4320#4304#4330#4312#4308#4305#4312
  ClientHeight = 536
  ClientWidth = 1337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 1192
    Height = 282
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    ExplicitWidth = 1169
    object grdUsers: TcxGridDBTableView
      OnDblClick = grdUsersDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsShow_Registered_Users
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = grdUsersJURIDICAL_STATUS
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = #4315#4317#4316#4304#4330#4308#4315#4308#4305#4312' '#4304#4320' '#4304#4320#4312#4321
      OptionsView.Footer = True
      object grdUsersID_USER_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'ID_USER_DATA'
        Visible = False
      end
      object grdUsersID_USER_DATA_PARENT: TcxGridDBColumn
        DataBinding.FieldName = 'ID_USER_DATA_PARENT'
        Visible = False
      end
      object grdUsersID_JURIDICAL_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_JURIDICAL_STATUS'
        Visible = False
      end
      object grdUsersJURIDICAL_STATUS: TcxGridDBColumn
        Caption = #4312#4323#4320#4312#4307#4312#4323#4314#4312' '#4321#4322#4304#4322#4323#4321#4312
        DataBinding.FieldName = 'JURIDICAL_STATUS'
        Width = 289
      end
      object grdUsersIDENTITY_CODE: TcxGridDBColumn
        Caption = #4321#4304#4312#4307#4308#4316#4322#4312#4324#4312#4313#4304#4330#4312#4317
        DataBinding.FieldName = 'IDENTITY_CODE'
        Width = 102
      end
      object grdUsersPARENT_NAME: TcxGridDBColumn
        Caption = #4317#4320#4306#4304#4316#4312#4310#4304#4330#4312#4304
        DataBinding.FieldName = 'PARENT_NAME'
        Width = 120
      end
      object grdUsersIDENTITY_NAME: TcxGridDBColumn
        Caption = #4321#4304#4334#4308#4314#4312
        DataBinding.FieldName = 'IDENTITY_NAME'
        Width = 137
      end
      object grdUsersIDENTITY_LNAME: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY_LNAME'
        Visible = False
        Width = 80
      end
      object grdUsersIDENTITY_FNAME: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY_FNAME'
        Visible = False
        Width = 80
      end
      object grdUsersIDENTITY_CARDNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY_CARDNUMBER'
        Visible = False
        Width = 131
      end
      object grdUsersREPRESENTATIVE_LNAME: TcxGridDBColumn
        DataBinding.FieldName = 'REPRESENTATIVE_LNAME'
        Visible = False
        Width = 80
      end
      object grdUsersREPRESENTATIVE_FNAME: TcxGridDBColumn
        DataBinding.FieldName = 'REPRESENTATIVE_FNAME'
        Visible = False
        Width = 80
      end
      object grdUsersREPRESENTATIVE_CARDNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'REPRESENTATIVE_CARDNUMBER'
        Visible = False
        Width = 80
      end
      object grdUsersREPRESENTATIVE_PERSONALID: TcxGridDBColumn
        DataBinding.FieldName = 'REPRESENTATIVE_PERSONALID'
        Visible = False
        Width = 159
      end
      object grdUsersEMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
        Width = 180
      end
      object grdUsersACTIVE_TXT: TcxGridDBColumn
        Caption = #4321#4322#4304#4322#4323#4321#4312
        DataBinding.FieldName = 'ACTIVE_TXT'
        Width = 80
      end
      object grdUsersIS_ACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        Visible = False
        Width = 80
      end
      object grdUsersREG_DATE: TcxGridDBColumn
        Caption = #4320#4308#4306#4312#4321#4322#4320#4304#4330#4312#4312#4321' '#4311#4304#4320#4312#4326#4312
        DataBinding.FieldName = 'REG_DATE'
        Width = 117
      end
      object grdUsersTND_COUNT: TcxGridDBColumn
        Caption = #4322#4316#4307' '#4320#4304#4317#4307#4308#4316#4317#4305#4304
        DataBinding.FieldName = 'TND_COUNT'
      end
      object grdUsersOFFER_COUNT: TcxGridDBColumn
        Caption = #4332#4307' '#4320#4304#4317#4307#4308#4316#4317#4305#4304
        DataBinding.FieldName = 'OFFER_COUNT'
      end
      object grdUsersCURR_OFFERS_IN_TND_COUNT: TcxGridDBColumn
        Caption = #4315#4312#4315#4307#4312#4316#4304#4320#4308' '#4332#4307' '#4322#4308#4316#4307#4308#4320#4310#4308
        DataBinding.FieldName = 'CURR_OFFERS_IN_TND_COUNT'
        Width = 95
      end
      object grdUsersSEVED_OFFERS_IN_TND_COUNT: TcxGridDBColumn
        Caption = #4328#4308#4316#4304#4334' '#4332#4307' '#4322#4308#4316#4307#4308#4320#4310#4308
        DataBinding.FieldName = 'SEVED_OFFERS_IN_TND_COUNT'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Users'
      GridView = grdUsers
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 516
    Width = 1337
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 220
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitWidth = 1329
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1337
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1329
    DesignSize = (
      1337
      41)
    object lblSum: TLabel
      Left = 288
      Top = 11
      Width = 49
      Height = 19
      Caption = 'lblSum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 772
      Top = 11
      Width = 31
      Height = 16
      Anchors = [akLeft, akRight]
      Caption = #4324#4317#4321#4322#4304
    end
    object Label2: TLabel
      Left = 975
      Top = 11
      Width = 51
      Height = 16
      Anchors = [akLeft, akRight]
      Caption = #4322#4308#4314#4308#4324#4317#4316#4312
    end
    object deFirst: TcxDateEdit
      Left = 16
      Top = 8
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = deFirstPropertiesEditValueChanged
      TabOrder = 0
      Width = 121
    end
    object deLast: TcxDateEdit
      Left = 143
      Top = 8
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = deFirstPropertiesEditValueChanged
      TabOrder = 1
      Width = 121
    end
    object btnFind: TcxButton
      Left = 1162
      Top = 8
      Width = 169
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #4324#4312#4314#4322#4320#4312
      TabOrder = 2
      OnClick = btnFindClick
    end
    object edtPhone: TcxTextEdit
      Left = 1032
      Top = 8
      Anchors = [akLeft, akRight]
      Properties.OnChange = edtPhonePropertiesChange
      TabOrder = 3
      Width = 121
    end
    object edtMail: TcxTextEdit
      Left = 809
      Top = 11
      Anchors = [akLeft, akRight]
      Properties.OnChange = edtMailPropertiesChange
      TabOrder = 4
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 335
    Width = 1337
    Height = 181
    Align = alBottom
    TabOrder = 3
    ExplicitWidth = 1329
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 480
      Height = 179
      Align = alLeft
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Tnd_By_User
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1TND_NUMBER: TcxGridDBColumn
          Caption = #4316#4317#4315#4308#4320#4312
          DataBinding.FieldName = 'TND_NUMBER'
          Width = 100
        end
        object cxGrid2DBTableView1TND_AMOUNT: TcxGridDBColumn
          Caption = #4311#4304#4316#4334#4304
          DataBinding.FieldName = 'TND_AMOUNT'
        end
        object cxGrid2DBTableView1CREATE_TIME: TcxGridDBColumn
          Caption = #4328#4308#4312#4325#4315#4316#4304
          DataBinding.FieldName = 'CREATE_TIME'
          Width = 100
        end
        object cxGrid2DBTableView1ACTIVATE_TIME: TcxGridDBColumn
          Caption = #4306#4304#4315#4317#4325#4309#4308#4327#4316#4307#4304
          DataBinding.FieldName = 'ACTIVATE_TIME'
          Width = 100
        end
        object cxGrid2DBTableView1NOTE: TcxGridDBColumn
          Caption = #4313#4317#4315#4308#4316#4322#4304#4320#4312
          DataBinding.FieldName = 'NOTE'
          Width = 100
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid3: TcxGrid
      Left = 493
      Top = 1
      Width = 412
      Height = 179
      Align = alLeft
      TabOrder = 1
      object cxGrid3DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Offer_By_User
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid3DBTableView1OFFER_NUMBER: TcxGridDBColumn
          Caption = #4316#4317#4315#4308#4320#4312
          DataBinding.FieldName = 'OFFER_NUMBER'
          Width = 100
        end
        object cxGrid3DBTableView1OFFER_AMOUNT: TcxGridDBColumn
          Caption = #4311#4304#4316#4334#4304
          DataBinding.FieldName = 'OFFER_AMOUNT'
          Width = 100
        end
        object cxGrid3DBTableView1CREATE_DATE: TcxGridDBColumn
          Caption = #4328#4308#4312#4325#4315#4316#4304
          DataBinding.FieldName = 'CREATE_DATE'
          Width = 100
        end
        object cxGrid3DBTableView1PUBLIC_DATE: TcxGridDBColumn
          Caption = #4306#4304#4315#4317#4325#4309#4308#4327#4316#4307#4304
          DataBinding.FieldName = 'PUBLIC_DATE'
          Width = 100
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 481
      Top = 1
      Width = 12
      Height = 179
    end
    object cxGrid4: TcxGrid
      Left = 905
      Top = 1
      Width = 416
      Height = 179
      Align = alLeft
      TabOrder = 3
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Offer_By_User1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #4316#4317#4315#4308#4320#4312
          DataBinding.FieldName = 'OFFER_NUMBER'
          Width = 100
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #4311#4304#4316#4334#4304
          DataBinding.FieldName = 'OFFER_AMOUNT'
          Width = 100
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = #4328#4308#4312#4325#4315#4316#4304
          DataBinding.FieldName = 'CREATE_DATE'
          Width = 100
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = #4306#4304#4315#4317#4325#4309#4308#4327#4316#4307#4304
          DataBinding.FieldName = 'PUBLIC_DATE'
          Width = 100
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 323
    Width = 1337
    Height = 12
    AlignSplitter = salBottom
    ExplicitWidth = 1329
  end
  object cxGrid5: TcxGrid
    Left = 1200
    Top = 41
    Width = 137
    Height = 282
    Align = alRight
    TabOrder = 5
    object tblPhones: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsShow_Phones_By_User
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = #4315#4317#4316#4304#4330#4308#4315#4308#4305#4312' '#4304#4320' '#4304#4320#4312#4321
      object tblPhonesCONTACT: TcxGridDBColumn
        Caption = #4313#4317#4316#4322#4304#4325#4322#4312
        DataBinding.FieldName = 'CONTACT'
        Width = 122
      end
    end
    object cxGrid5Level1: TcxGridLevel
      GridView = tblPhones
    end
  end
  object cxSplitter3: TcxSplitter
    Left = 1192
    Top = 41
    Width = 8
    Height = 282
    AlignSplitter = salRight
    ExplicitLeft = 1184
    ExplicitTop = 208
    ExplicitHeight = 100
  end
  object qrShow_Registered_Users: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Registered_Users(:OUT_CURS_REGISTER_INFO);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Registered_Users(:OUT_CURS_REGISTER_INFO);'
      'end;')
    Left = 224
    Top = 136
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS_REGISTER_INFO'
        ParamType = ptOutput
        Value = ''
      end>
    object qrShow_Registered_UsersID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Registered_UsersID_USER_DATA_PARENT: TFloatField
      FieldName = 'ID_USER_DATA_PARENT'
      ReadOnly = True
    end
    object qrShow_Registered_UsersID_JURIDICAL_STATUS: TFloatField
      FieldName = 'ID_JURIDICAL_STATUS'
      ReadOnly = True
      Required = True
    end
    object qrShow_Registered_UsersJURIDICAL_STATUS: TWideStringField
      FieldName = 'JURIDICAL_STATUS'
      ReadOnly = True
      Required = True
      Size = 1000
    end
    object qrShow_Registered_UsersIDENTITY_CODE: TWideStringField
      FieldName = 'IDENTITY_CODE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Registered_UsersIDENTITY_NAME: TWideStringField
      FieldName = 'IDENTITY_NAME'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Registered_UsersIDENTITY_LNAME: TWideStringField
      FieldName = 'IDENTITY_LNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersIDENTITY_FNAME: TWideStringField
      FieldName = 'IDENTITY_FNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersIDENTITY_CARDNUMBER: TWideStringField
      FieldName = 'IDENTITY_CARDNUMBER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersREPRESENTATIVE_LNAME: TWideStringField
      FieldName = 'REPRESENTATIVE_LNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersREPRESENTATIVE_FNAME: TWideStringField
      FieldName = 'REPRESENTATIVE_FNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersREPRESENTATIVE_PERSONALID: TWideStringField
      FieldName = 'REPRESENTATIVE_PERSONALID'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersREPRESENTATIVE_CARDNUMBER: TWideStringField
      FieldName = 'REPRESENTATIVE_CARDNUMBER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Registered_UsersIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Registered_UsersACTIVE_TXT: TWideStringField
      FieldName = 'ACTIVE_TXT'
      ReadOnly = True
      Size = 47
    end
    object qrShow_Registered_UsersREG_DATE: TDateTimeField
      FieldName = 'REG_DATE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Registered_UsersPARENT_NAME: TWideStringField
      FieldName = 'PARENT_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Registered_UsersTND_COUNT: TFloatField
      FieldName = 'TND_COUNT'
      ReadOnly = True
    end
    object qrShow_Registered_UsersOFFER_COUNT: TFloatField
      FieldName = 'OFFER_COUNT'
      ReadOnly = True
    end
    object qrShow_Registered_UsersCURR_OFFERS_IN_TND_COUNT: TFloatField
      FieldName = 'CURR_OFFERS_IN_TND_COUNT'
      ReadOnly = True
    end
    object qrShow_Registered_UsersSEVED_OFFERS_IN_TND_COUNT: TFloatField
      FieldName = 'SEVED_OFFERS_IN_TND_COUNT'
      ReadOnly = True
    end
  end
  object dsShow_Registered_Users: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Registered_Users
    Left = 224
    Top = 200
  end
  object qrShow_Tnd_By_User: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Tnd_By_User(:OUT_CURS, :ID_USER_DATA, :IS_OFFER);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Tnd_By_User(:OUT_CURS, :ID_USER_DATA, :IS_OFFER);'
      'end;')
    MasterSource = dsShow_Registered_Users
    MasterFields = 'ID_USER_DATA'
    DetailFields = 'ID_USER_DATA'
    Left = 400
    Top = 128
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'ID_USER_DATA'
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'IS_OFFER'
        ParamType = ptInput
        Value = nil
      end>
    object qrShow_Tnd_By_UserID_TND: TFloatField
      FieldName = 'ID_TND'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserTND_NAME: TWideStringField
      FieldName = 'TND_NAME'
      ReadOnly = True
      Size = 255
    end
    object qrShow_Tnd_By_UserTND_NUMBER: TWideStringField
      FieldName = 'TND_NUMBER'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrShow_Tnd_By_UserID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserID_TND_TYPE_LIB: TFloatField
      FieldName = 'ID_TND_TYPE_LIB'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserID_TND_STATUS_LIB: TFloatField
      FieldName = 'ID_TND_STATUS_LIB'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserCREATE_TIME: TSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserACTIVATE_TIME: TSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
      ReadOnly = True
    end
    object qrShow_Tnd_By_UserCHANGE_TIME: TSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      ReadOnly = True
    end
    object qrShow_Tnd_By_UserTND_AMOUNT: TFloatField
      FieldName = 'TND_AMOUNT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserBIDDING_AMOUNT: TFloatField
      FieldName = 'BIDDING_AMOUNT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserBIDDING_PERCENT: TFloatField
      FieldName = 'BIDDING_PERCENT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserIS_VAT: TFloatField
      FieldName = 'IS_VAT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserID_VALUTA: TFloatField
      FieldName = 'ID_VALUTA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserNOTE: TWideStringField
      FieldName = 'NOTE'
      ReadOnly = True
      Size = 4000
    end
    object qrShow_Tnd_By_UserIS_CLOSED: TFloatField
      FieldName = 'IS_CLOSED'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserIS_CONFID: TFloatField
      FieldName = 'IS_CONFID'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserPRICE_ACCEPT_HOUR: TFloatField
      FieldName = 'PRICE_ACCEPT_HOUR'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_By_UserFORM_FLAG: TFloatField
      FieldName = 'FORM_FLAG'
      ReadOnly = True
      Required = True
    end
  end
  object qrShow_Offer_By_User: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Offer_By_User(:OUT_CURS, :ID_USER_DATA, :IN_STATUS);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Offer_By_User(:OUT_CURS, :ID_USER_DATA, :IN_STATUS);'
      'end;')
    MasterSource = dsShow_Registered_Users
    MasterFields = 'ID_USER_DATA'
    DetailFields = 'ID_PARTNER'
    Left = 528
    Top = 128
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'ID_USER_DATA'
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'IN_STATUS'
        ParamType = ptInput
        Value = nil
      end>
    object qrShow_Offer_By_UserID_OFFER: TFloatField
      FieldName = 'ID_OFFER'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserID_FOR_LANG: TFloatField
      FieldName = 'ID_FOR_LANG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserID_LANG: TFloatField
      FieldName = 'ID_LANG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserID_PARTNER: TFloatField
      FieldName = 'ID_PARTNER'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserID_TND: TFloatField
      FieldName = 'ID_TND'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserOFFER_NUMBER: TWideStringField
      FieldName = 'OFFER_NUMBER'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Offer_By_UserOFFER_NAME: TWideStringField
      FieldName = 'OFFER_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Offer_By_UserIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserSTATUS_FLAG: TFloatField
      FieldName = 'STATUS_FLAG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserTYPE_FLAG: TFloatField
      FieldName = 'TYPE_FLAG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_UserCREATE_DATE: TSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ReadOnly = True
    end
    object qrShow_Offer_By_UserPUBLIC_DATE: TSQLTimeStampField
      FieldName = 'PUBLIC_DATE'
      ReadOnly = True
    end
    object qrShow_Offer_By_UserOFFER_AMOUNT: TFloatField
      FieldName = 'OFFER_AMOUNT'
      ReadOnly = True
      Required = True
    end
  end
  object dsShow_Tnd_By_User: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Tnd_By_User
    Left = 400
    Top = 200
  end
  object dsShow_Offer_By_User: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Offer_By_User
    Left = 520
    Top = 192
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 784
    Top = 120
  end
  object spGet_Income_Amount: TUniStoredProc
    StoredProcName = 'get_income_amount'
    SQL.Strings = (
      'begin'
      
        '  get_income_amount(:IN_ID_USER_DATA, :IN_FIRST_DATE, :IN_LAST_D' +
        'ATE, :OUT_SUM);'
      'end;')
    Connection = DM.UniConnection1
    Left = 64
    Top = 168
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_ID_USER_DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'IN_FIRST_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'IN_LAST_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'OUT_SUM'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'get_income_amount'
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -13
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -13
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    HintStyle.Rounded = True
    OnShowHint = cxHintStyleController1ShowHint
    Left = 576
    Top = 390
  end
  object dsShow_Offer_By_User1: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Offer_By_User1
    Left = 616
    Top = 240
  end
  object qrShow_Offer_By_User1: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Offer_By_User(:OUT_CURS, :ID_USER_DATA, :IN_STATUS);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Offer_By_User(:OUT_CURS, :ID_USER_DATA, :IN_STATUS);'
      'end;')
    MasterSource = dsShow_Registered_Users
    MasterFields = 'ID_USER_DATA'
    DetailFields = 'ID_PARTNER'
    Left = 616
    Top = 176
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'ID_USER_DATA'
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'IN_STATUS'
        ParamType = ptInput
        Value = nil
      end>
    object FloatField1: TFloatField
      FieldName = 'ID_OFFER'
      ReadOnly = True
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'ID_FOR_LANG'
      ReadOnly = True
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'ID_LANG'
      ReadOnly = True
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'ID_PARTNER'
      ReadOnly = True
      Required = True
    end
    object FloatField5: TFloatField
      FieldName = 'ID_TND'
      ReadOnly = True
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'OFFER_NUMBER'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object WideStringField2: TWideStringField
      FieldName = 'OFFER_NAME'
      ReadOnly = True
      Size = 200
    end
    object FloatField6: TFloatField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
      Required = True
    end
    object FloatField7: TFloatField
      FieldName = 'STATUS_FLAG'
      ReadOnly = True
      Required = True
    end
    object FloatField8: TFloatField
      FieldName = 'TYPE_FLAG'
      ReadOnly = True
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ReadOnly = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'PUBLIC_DATE'
      ReadOnly = True
    end
    object FloatField9: TFloatField
      FieldName = 'OFFER_AMOUNT'
      ReadOnly = True
      Required = True
    end
  end
  object qrShow_Phones_By_User: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Phones_By_User(:ID_USER_DATA, :OUT_CURS);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Phones_By_User(:ID_USER_DATA, :OUT_CURS);'
      'end;')
    MasterSource = dsShow_Registered_Users
    MasterFields = 'ID_USER_DATA'
    DetailFields = 'ID_USER_DATA'
    Left = 904
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_USER_DATA'
        Value = Null
      end
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = ''
      end>
    object qrShow_Phones_By_UserCONTACT: TWideStringField
      FieldName = 'CONTACT'
      ReadOnly = True
      Size = 4000
    end
  end
  object dsShow_Phones_By_User: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Phones_By_User
    Left = 904
    Top = 200
  end
  object spGet_User_By_Contact: TUniStoredProc
    StoredProcName = 'Get_User_By_Contact'
    SQL.Strings = (
      'begin'
      
        '  Get_User_By_Contact(:IN_ID_USER_DATA, :IN_CONTACT_TYPE, :IN_CO' +
        'NTACT);'
      'end;')
    Connection = DM.UniConnection1
    Left = 1040
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_ID_USER_DATA'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'IN_CONTACT_TYPE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'IN_CONTACT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'Get_User_By_Contact'
  end
end
