object frmSale_User: TfrmSale_User
  Left = 0
  Top = 0
  Caption = #4315#4308#4316#4308#4335#4308#4320#4308#4305#4312
  ClientHeight = 622
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 596
    Height = 561
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 594
      Height = 559
      Align = alClient
      TabOrder = 0
      object tblSalers: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsSale_Man
        DataController.KeyFieldNames = 'ID_SALE_MAN'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsView.GroupByBox = False
        object tblSalersID_SALE_MAN: TcxGridDBColumn
          DataBinding.FieldName = 'ID_SALE_MAN'
          Visible = False
          Width = 100
        end
        object tblSalersFNAME: TcxGridDBColumn
          Caption = #4306#4309#4304#4320#4312
          DataBinding.FieldName = 'FNAME'
          Width = 100
        end
        object tblSalersLNAME: TcxGridDBColumn
          Caption = #4321#4304#4334#4308#4314#4312
          DataBinding.FieldName = 'LNAME'
          Width = 100
        end
        object tblSalersPHONE_NUM: TcxGridDBColumn
          Caption = #4322#4308#4314#4308#4324#4317#4316#4312
          DataBinding.FieldName = 'PHONE_NUM'
          Width = 100
        end
        object tblSalersEMAIL: TcxGridDBColumn
          Caption = 'eMail'
          DataBinding.FieldName = 'EMAIL'
          Width = 100
        end
        object tblSalersREG_DATE: TcxGridDBColumn
          Caption = #4307#4304#4320#4308#4306#4312#4321#4322#4320#4312#4320#4307#4304
          DataBinding.FieldName = 'REG_DATE'
          Options.Editing = False
          Width = 100
        end
        object tblSalersCOMPANY_COUNT: TcxGridDBColumn
          Caption = #4315#4317#4315#4334#4315#4304#4320#4308#4305#4314#4308#4305#4312
          DataBinding.FieldName = 'COMPANY_COUNT'
          Width = 90
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tblSalers
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 602
    Width = 1064
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel3: TPanel
    Left = 608
    Top = 41
    Width = 456
    Height = 561
    Align = alRight
    TabOrder = 3
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 454
      Height = 559
      Align = alClient
      TabOrder = 0
      object tblCompany: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Users_For_Sale
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object tblCompanyJURIDICAL_STATUS: TcxGridDBColumn
          Caption = #4321#4322#4304#4322#4323#4321#4312
          DataBinding.FieldName = 'JURIDICAL_STATUS'
          Visible = False
          Width = 100
        end
        object tblCompanyIDENTITY_CODE: TcxGridDBColumn
          Caption = #4313#4317#4307#4312
          DataBinding.FieldName = 'IDENTITY_CODE'
          Width = 100
        end
        object tblCompanyIDENTITY_NAME: TcxGridDBColumn
          Caption = #4321#4304#4334#4308#4314#4312
          DataBinding.FieldName = 'IDENTITY_NAME'
          Width = 100
        end
        object tblCompanyEMAIL: TcxGridDBColumn
          Caption = 'eMil'
          DataBinding.FieldName = 'EMAIL'
          Width = 100
        end
        object tblCompanyMANAGER: TcxGridDBColumn
          Caption = #4315#4308#4316#4308#4335#4308#4320#4312
          DataBinding.FieldName = 'MANAGER'
          Width = 100
        end
        object tblCompanyTND_COUNT: TcxGridDBColumn
          Caption = #4322#4308#4316#4307#4308#4320#4308#4305#4312
          DataBinding.FieldName = 'TND_COUNT'
          Width = 100
        end
        object tblCompanyOFFER_COUNT: TcxGridDBColumn
          Caption = #4332#4312#4316#4304#4307#4304#4307#4308#4305#4308#4305#4312
          DataBinding.FieldName = 'OFFER_COUNT'
          Width = 100
        end
        object tblCompanyREG_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'REG_DATE'
          Visible = False
          Width = 100
        end
        object tblCompanyID_USER_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA'
          Visible = False
        end
        object tblCompanyID_USER_DATA_PARENT: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA_PARENT'
          Visible = False
        end
        object tblCompanyID_JURIDICAL_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_JURIDICAL_STATUS'
          Visible = False
        end
        object tblCompanyIDENTITY_LNAME: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_LNAME'
          Visible = False
        end
        object tblCompanyIDENTITY_FNAME: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_FNAME'
          Visible = False
        end
        object tblCompanyIDENTITY_CARDNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_CARDNUMBER'
          Visible = False
        end
        object tblCompanyREPRESENTATIVE_LNAME: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_LNAME'
          Visible = False
        end
        object tblCompanyREPRESENTATIVE_FNAME: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_FNAME'
          Visible = False
        end
        object tblCompanyREPRESENTATIVE_PERSONALID: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_PERSONALID'
          Visible = False
        end
        object tblCompanyREPRESENTATIVE_CARDNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_CARDNUMBER'
          Visible = False
        end
        object tblCompanyIS_ACTIVE: TcxGridDBColumn
          DataBinding.FieldName = 'IS_ACTIVE'
          Visible = False
        end
        object tblCompanyACTIVE_TXT: TcxGridDBColumn
          DataBinding.FieldName = 'ACTIVE_TXT'
          Visible = False
        end
        object tblCompanyPARENT_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_NAME'
          Visible = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = tblCompany
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 596
    Top = 41
    Width = 12
    Height = 561
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
  end
  object qrSale_Man: TUniQuery
    SQLInsert.Strings = (
      'begin'
      
        '  Save_Sale_Man(:ID_SALE_MAN, :ID_SALE_MAN, :FNAME, :LNAME, :PHO' +
        'NE_NUM, :EMAIL);'
      'end;')
    SQLDelete.Strings = (
      'begin'
      '  Del_Sale_Man(:ID_SALE_MAN);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      
        '  Save_Sale_Man(:ID_SALE_MAN, :ID_SALE_MAN, :FNAME, :LNAME, :PHO' +
        'NE_NUM, :EMAIL);'
      'end;')
    SQLRefresh.Strings = (
      'begin'
      '  Show_Sale_Man(:OUT_CURS, :ID_SALE_MAN);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Sale_Man(:OUT_CURS, :ID_SALE_MAN);'
      'end;')
    IndexFieldNames = 'ID_SALE_MAN'
    Left = 120
    Top = 161
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ID_SALE_MAN'
        Value = Null
      end>
    object qrSale_ManID_SALE_MAN: TFloatField
      FieldName = 'ID_SALE_MAN'
      ReadOnly = True
      Required = True
    end
    object qrSale_ManFNAME: TWideStringField
      FieldName = 'FNAME'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrSale_ManLNAME: TWideStringField
      FieldName = 'LNAME'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object qrSale_ManPHONE_NUM: TWideStringField
      FieldName = 'PHONE_NUM'
      ReadOnly = True
    end
    object qrSale_ManEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 60
    end
    object qrSale_ManREG_DATE: TDateTimeField
      FieldName = 'REG_DATE'
      ReadOnly = True
      Required = True
    end
    object qrSale_ManCOMPANY_COUNT: TFloatField
      FieldName = 'COMPANY_COUNT'
      ReadOnly = True
    end
  end
  object dsSale_Man: TUniDataSource
    DataSet = qrSale_Man
    Left = 120
    Top = 217
  end
  object dsShow_Users_For_Sale: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Users_For_Sale
    Left = 728
    Top = 201
  end
  object qrShow_Users_For_Sale: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Users_For_Sale(:OUT_CURS_REGISTER_INFO, :ID_SALE_MAN);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Users_For_Sale(:OUT_CURS_REGISTER_INFO, :ID_SALE_MAN);'
      'end;')
    Left = 728
    Top = 145
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS_REGISTER_INFO'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'ID_SALE_MAN'
        Value = Null
      end>
    object qrShow_Users_For_SaleID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_SaleID_USER_DATA_PARENT: TFloatField
      FieldName = 'ID_USER_DATA_PARENT'
      ReadOnly = True
    end
    object qrShow_Users_For_SaleID_JURIDICAL_STATUS: TFloatField
      FieldName = 'ID_JURIDICAL_STATUS'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_SaleJURIDICAL_STATUS: TWideStringField
      FieldName = 'JURIDICAL_STATUS'
      ReadOnly = True
      Required = True
      Size = 1000
    end
    object qrShow_Users_For_SaleIDENTITY_CODE: TWideStringField
      FieldName = 'IDENTITY_CODE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_SaleIDENTITY_NAME: TWideStringField
      FieldName = 'IDENTITY_NAME'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Users_For_SaleIDENTITY_LNAME: TWideStringField
      FieldName = 'IDENTITY_LNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleIDENTITY_FNAME: TWideStringField
      FieldName = 'IDENTITY_FNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleIDENTITY_CARDNUMBER: TWideStringField
      FieldName = 'IDENTITY_CARDNUMBER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleREPRESENTATIVE_LNAME: TWideStringField
      FieldName = 'REPRESENTATIVE_LNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleREPRESENTATIVE_FNAME: TWideStringField
      FieldName = 'REPRESENTATIVE_FNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleREPRESENTATIVE_PERSONALID: TWideStringField
      FieldName = 'REPRESENTATIVE_PERSONALID'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleREPRESENTATIVE_CARDNUMBER: TWideStringField
      FieldName = 'REPRESENTATIVE_CARDNUMBER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Users_For_SaleIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_SaleACTIVE_TXT: TWideStringField
      FieldName = 'ACTIVE_TXT'
      ReadOnly = True
      Size = 47
    end
    object qrShow_Users_For_SaleREG_DATE: TDateTimeField
      FieldName = 'REG_DATE'
      ReadOnly = True
    end
    object qrShow_Users_For_SalePARENT_NAME: TWideStringField
      FieldName = 'PARENT_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_SaleTND_COUNT: TFloatField
      FieldName = 'TND_COUNT'
      ReadOnly = True
    end
    object qrShow_Users_For_SaleOFFER_COUNT: TFloatField
      FieldName = 'OFFER_COUNT'
      ReadOnly = True
    end
    object qrShow_Users_For_SaleMANAGER: TWideStringField
      FieldName = 'MANAGER'
      ReadOnly = True
      Size = 121
    end
  end
end
