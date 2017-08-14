object frmTenders: TfrmTenders
  Left = 0
  Top = 0
  Caption = #4322#4308#4316#4307#4308#4320#4308#4305#4312
  ClientHeight = 354
  ClientWidth = 644
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 904
    object lblCaption: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 16
      Caption = 'lblCaption'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 644
    Height = 293
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 904
    ExplicitHeight = 507
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 642
      Height = 291
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 902
      ExplicitHeight = 505
      object tblTenders: TcxGridDBTableView
        OnDblClick = tblTendersDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Tnd_By_User
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object tblTendersID_TND: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND'
          Visible = False
          Width = 100
        end
        object tblTendersTND_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'TND_NAME'
          Visible = False
          Width = 100
        end
        object tblTendersTND_NUMBER: TcxGridDBColumn
          Caption = #4316#4317#4315#4308#4320#4312
          DataBinding.FieldName = 'TND_NUMBER'
          Width = 100
        end
        object tblTendersID_USER_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA'
          Visible = False
          Width = 100
        end
        object tblTendersID_TND_TYPE_LIB: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND_TYPE_LIB'
          Visible = False
          Width = 100
        end
        object tblTendersID_TND_STATUS_LIB: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND_STATUS_LIB'
          Visible = False
          Width = 100
        end
        object tblTendersCREATE_TIME: TcxGridDBColumn
          Caption = #4328#4308#4312#4325#4315#4316#4304
          DataBinding.FieldName = 'CREATE_TIME'
          Width = 100
        end
        object tblTendersACTIVATE_TIME: TcxGridDBColumn
          Caption = #4306#4304#4315#4317#4330#4334#4304#4307#4307#4304
          DataBinding.FieldName = 'ACTIVATE_TIME'
          Width = 100
        end
        object tblTendersCHANGE_TIME: TcxGridDBColumn
          DataBinding.FieldName = 'CHANGE_TIME'
          Visible = False
          Width = 100
        end
        object tblTendersTND_AMOUNT: TcxGridDBColumn
          Caption = #4311#4304#4316#4334#4304
          DataBinding.FieldName = 'TND_AMOUNT'
          Width = 100
        end
        object tblTendersBIDDING_AMOUNT: TcxGridDBColumn
          Caption = #4305#4312#4335#4312
          DataBinding.FieldName = 'BIDDING_AMOUNT'
          Width = 100
        end
        object tblTendersBIDDING_PERCENT: TcxGridDBColumn
          Caption = #4305#4312#4335#4312' (%)'
          DataBinding.FieldName = 'BIDDING_PERCENT'
          Width = 123
        end
        object tblTendersIS_VAT: TcxGridDBColumn
          DataBinding.FieldName = 'IS_VAT'
          Visible = False
          Width = 100
        end
        object tblTendersID_VALUTA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_VALUTA'
          Visible = False
          Width = 100
        end
        object tblTendersNOTE: TcxGridDBColumn
          Caption = #4328#4308#4316#4312#4328#4309#4316#4304
          DataBinding.FieldName = 'NOTE'
          Width = 100
        end
        object tblTendersIS_CLOSED: TcxGridDBColumn
          DataBinding.FieldName = 'IS_CLOSED'
          Visible = False
          Width = 100
        end
        object tblTendersIS_CONFID: TcxGridDBColumn
          DataBinding.FieldName = 'IS_CONFID'
          Visible = False
          Width = 100
        end
        object tblTendersPRICE_ACCEPT_HOUR: TcxGridDBColumn
          Caption = #4307#4304#4310#4323#4321#4322#4308#4305#4312#4321' '#4311#4304#4320#4312#4326#4312
          DataBinding.FieldName = 'PRICE_ACCEPT_HOUR'
          Visible = False
          Width = 100
        end
        object tblTendersFORM_FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FORM_FLAG'
          Visible = False
          Width = 100
        end
        object tblTendersINCOME_AMOOUNT: TcxGridDBColumn
          Caption = #4328#4308#4315#4317#4321#4323#4314#4312' '#4311#4304#4316#4334#4304
          DataBinding.FieldName = 'INCOME_AMOOUNT'
          Width = 84
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = dsShow_Offer_By_tnd
        DataController.DetailKeyFieldNames = 'ID_TND'
        DataController.KeyFieldNames = 'ID_TND'
        DataController.MasterKeyFieldNames = 'ID_TND'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2ID_TND1: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2IDENTITY_NAME1: TcxGridDBColumn
          Caption = #4321#4304#4334#4308#4314#4312
          DataBinding.FieldName = 'IDENTITY_NAME'
          Width = 100
        end
        object cxGrid1DBTableView2CREATE_DATE1: TcxGridDBColumn
          Caption = #4328#4308#4312#4325#4315#4316#4304
          DataBinding.FieldName = 'CREATE_DATE'
          Width = 100
        end
        object cxGrid1DBTableView2PUBLIC_DATE1: TcxGridDBColumn
          DataBinding.FieldName = 'PUBLIC_DATE'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView2OFFER_AMOUNT1: TcxGridDBColumn
          Caption = #4332#4312#4316#4304#4307#4304#4307#4308#4305#4312#4321' '#4311#4304#4316#4334#4304
          DataBinding.FieldName = 'OFFER_AMOUNT'
          Width = 100
        end
        object cxGrid1DBTableView2INCOME_AMOUNT1: TcxGridDBColumn
          Caption = #4328#4308#4315#4317#4321#4323#4314#4312' '#4311#4304#4316#4334#4304
          DataBinding.FieldName = 'INCOME_AMOUNT'
          Width = 100
        end
        object cxGrid1DBTableView2PAY_DATE1: TcxGridDBColumn
          Caption = #4306#4304#4307#4304#4334#4307#4304
          DataBinding.FieldName = 'PAY_DATE'
          Width = 150
        end
        object cxGrid1DBTableView2EMAIL1: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
          Width = 150
        end
        object cxGrid1DBTableView2ID_OFFER1: TcxGridDBColumn
          DataBinding.FieldName = 'ID_OFFER'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2ID_FOR_LANG1: TcxGridDBColumn
          DataBinding.FieldName = 'ID_FOR_LANG'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2ID_LANG1: TcxGridDBColumn
          DataBinding.FieldName = 'ID_LANG'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2ID_PARTNER1: TcxGridDBColumn
          DataBinding.FieldName = 'ID_PARTNER'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2OFFER_NUMBER1: TcxGridDBColumn
          DataBinding.FieldName = 'OFFER_NUMBER'
          Visible = False
          Width = 1404
        end
        object cxGrid1DBTableView2OFFER_NAME1: TcxGridDBColumn
          DataBinding.FieldName = 'OFFER_NAME'
          Visible = False
          Width = 1404
        end
        object cxGrid1DBTableView2IS_ACTIVE1: TcxGridDBColumn
          DataBinding.FieldName = 'IS_ACTIVE'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2STATUS_FLAG1: TcxGridDBColumn
          DataBinding.FieldName = 'STATUS_FLAG'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView2TYPE_FLAG1: TcxGridDBColumn
          DataBinding.FieldName = 'TYPE_FLAG'
          Visible = False
          Width = 74
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tblTenders
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 334
    Width = 644
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container1
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 548
    ExplicitWidth = 904
    object dxStatusBar1Container1: TdxStatusBarContainerControl
      Left = 2
      Top = 4
      Width = 48
      Height = 14
      object btnExpand: TSpeedButton
        Left = 0
        Top = 0
        Width = 48
        Height = 14
        Align = alClient
        Caption = '+'
        OnClick = btnExpandClick
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object qrShow_Tnd_By_User: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Tnd_By_User(:OUT_CURS, :IN_ID_USER_DATA, :IS_OFFER);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Tnd_By_User(:OUT_CURS, :IN_ID_USER_DATA, :IS_OFFER);'
      'end;')
    IndexFieldNames = 'ID_TND'
    Left = 64
    Top = 185
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_USER_DATA'
        ParamType = ptInput
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
    object qrShow_Tnd_By_UserINCOME_AMOOUNT: TFloatField
      FieldName = 'INCOME_AMOOUNT'
      ReadOnly = True
    end
  end
  object dsShow_Tnd_By_User: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Tnd_By_User
    Left = 64
    Top = 241
  end
  object spGet_Income_Amount_By_user: TUniStoredProc
    StoredProcName = 'Get_Income_Amount_By_user'
    SQL.Strings = (
      'begin'
      '  Get_Income_Amount_By_user(:IN_ID_USER_DATA, :OUT_SUM);'
      'end;')
    Connection = DM.UniConnection1
    Left = 344
    Top = 177
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_ID_USER_DATA'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'OUT_SUM'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'Get_Income_Amount_By_user'
  end
  object qrShow_Offer_By_tnd: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Offer_By_tnd(:OUT_CURS, :ID_TND);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Offer_By_tnd(:OUT_CURS, :ID_TND);'
      'end;')
    IndexFieldNames = 'ID_TND'
    Left = 216
    Top = 209
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'ID_TND'
        Value = nil
      end>
    object qrShow_Offer_By_tndID_OFFER: TFloatField
      FieldName = 'ID_OFFER'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndID_FOR_LANG: TFloatField
      FieldName = 'ID_FOR_LANG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndID_LANG: TFloatField
      FieldName = 'ID_LANG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndID_PARTNER: TFloatField
      FieldName = 'ID_PARTNER'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndID_TND: TFloatField
      FieldName = 'ID_TND'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndOFFER_NUMBER: TWideStringField
      FieldName = 'OFFER_NUMBER'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Offer_By_tndOFFER_NAME: TWideStringField
      FieldName = 'OFFER_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Offer_By_tndIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndSTATUS_FLAG: TFloatField
      FieldName = 'STATUS_FLAG'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndTYPE_FLAG: TFloatField
      FieldName = 'TYPE_FLAG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndCREATE_DATE: TSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndPUBLIC_DATE: TSQLTimeStampField
      FieldName = 'PUBLIC_DATE'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndOFFER_AMOUNT: TFloatField
      FieldName = 'OFFER_AMOUNT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Offer_By_tndINCOME_AMOUNT: TFloatField
      FieldName = 'INCOME_AMOUNT'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndIDENTITY_NAME: TWideStringField
      FieldName = 'IDENTITY_NAME'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Offer_By_tndPAY_DATE: TSQLTimeStampField
      Alignment = taRightJustify
      FieldName = 'PAY_DATE'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Required = True
      Size = 200
    end
  end
  object dsShow_Offer_By_tnd: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Offer_By_tnd
    Left = 216
    Top = 273
  end
end
