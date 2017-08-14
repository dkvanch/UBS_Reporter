object frmAll_Tenders: TfrmAll_Tenders
  Left = 0
  Top = 0
  Caption = #4322#4308#4316#4307#4308#4320#4308#4305#4312
  ClientHeight = 598
  ClientWidth = 972
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
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 578
    Width = 972
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 487
    ExplicitWidth = 875
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 37
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 875
    object deLast: TcxDateEdit
      Left = 143
      Top = 8
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 121
    end
    object deFirst: TcxDateEdit
      Left = 16
      Top = 8
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 616
    Height = 541
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 449
    ExplicitHeight = 450
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 614
      Height = 346
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 656
      ExplicitHeight = 240
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Tnd_For_Report
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1ID_TND: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND'
          Width = 46
        end
        object cxGrid1DBTableView1TND_NUMBER: TcxGridDBColumn
          Caption = #4322#4308#4316#4307#4308#4320#4312
          DataBinding.FieldName = 'TND_NUMBER'
          Width = 63
        end
        object cxGrid1DBTableView1TND_AMOUNT: TcxGridDBColumn
          Caption = #4311#4304#4316#4334#4304
          DataBinding.FieldName = 'TND_AMOUNT'
          Width = 70
        end
        object cxGrid1DBTableView1CREATE_TIME: TcxGridDBColumn
          Caption = #4306#4304#4315#4317#4330#4334#4304#4307#4307#4304
          DataBinding.FieldName = 'CREATE_TIME'
          Width = 77
        end
        object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
          Caption = #4313#4317#4315#4318#4304#4316#4312#4304
          DataBinding.FieldName = 'USER_NAME'
          Width = 207
        end
        object cxGrid1DBTableView1OFFERS_IN_TND_COUNT: TcxGridDBColumn
          Caption = #4332#4312#4316#4304#4307#4304#4307#4308#4305#4308#4305#4312
          DataBinding.FieldName = 'OFFERS_IN_TND_COUNT'
          Width = 65
        end
        object cxGrid1DBTableView1INCOME_AMOUNT: TcxGridDBColumn
          Caption = #4328#4308#4315#4317#4321#4304#4309#4304#4314#4312
          DataBinding.FieldName = 'INCOME_AMOUNT'
          Width = 77
        end
        object cxGrid1DBTableView1NOTE: TcxGridDBColumn
          Caption = #4328#4308#4316#4312#4328#4309#4316#4304
          DataBinding.FieldName = 'NOTE'
          Visible = False
          Width = 249
        end
        object cxGrid1DBTableView1TND_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'TND_NAME'
          Visible = False
        end
        object cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA'
          Visible = False
        end
        object cxGrid1DBTableView1ID_TND_TYPE_LIB: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND_TYPE_LIB'
          Visible = False
        end
        object cxGrid1DBTableView1ID_TND_STATUS_LIB: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND_STATUS_LIB'
          Visible = False
        end
        object cxGrid1DBTableView1ACTIVATE_TIME: TcxGridDBColumn
          DataBinding.FieldName = 'ACTIVATE_TIME'
          Visible = False
        end
        object cxGrid1DBTableView1CHANGE_TIME: TcxGridDBColumn
          DataBinding.FieldName = 'CHANGE_TIME'
          Visible = False
        end
        object cxGrid1DBTableView1BIDDING_AMOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'BIDDING_AMOUNT'
          Visible = False
        end
        object cxGrid1DBTableView1BIDDING_PERCENT: TcxGridDBColumn
          DataBinding.FieldName = 'BIDDING_PERCENT'
          Visible = False
        end
        object cxGrid1DBTableView1IS_VAT: TcxGridDBColumn
          DataBinding.FieldName = 'IS_VAT'
          Visible = False
        end
        object cxGrid1DBTableView1ID_VALUTA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_VALUTA'
          Visible = False
        end
        object cxGrid1DBTableView1IS_CLOSED: TcxGridDBColumn
          DataBinding.FieldName = 'IS_CLOSED'
          Visible = False
        end
        object cxGrid1DBTableView1IS_CONFID: TcxGridDBColumn
          DataBinding.FieldName = 'IS_CONFID'
          Visible = False
        end
        object cxGrid1DBTableView1PRICE_ACCEPT_HOUR: TcxGridDBColumn
          DataBinding.FieldName = 'PRICE_ACCEPT_HOUR'
          Visible = False
        end
        object cxGrid1DBTableView1FORM_FLAG: TcxGridDBColumn
          DataBinding.FieldName = 'FORM_FLAG'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 347
      Width = 614
      Height = 8
      AlignSplitter = salBottom
      ExplicitTop = 241
      ExplicitWidth = 873
    end
    object Panel3: TPanel
      Left = 1
      Top = 355
      Width = 614
      Height = 185
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 256
      ExplicitWidth = 873
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 612
        Height = 183
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 565
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsShow_Offer_By_tnd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid2DBTableView1INCOME_AMOUNT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxGrid2DBTableView1IDENTITY_NAME: TcxGridDBColumn
            Caption = #4313#4317#4315#4318#4304#4316#4312#4304
            DataBinding.FieldName = 'IDENTITY_NAME'
            Width = 110
          end
          object cxGrid2DBTableView1OFFER_AMOUNT: TcxGridDBColumn
            Caption = #4332#4312#4316#4304#4307#4304#4307#4308#4305#4312#4321' '#4311#4304#4316#4334#4304
            DataBinding.FieldName = 'OFFER_AMOUNT'
            Width = 110
          end
          object cxGrid2DBTableView1INCOME_AMOUNT: TcxGridDBColumn
            Caption = #4328#4308#4315#4317#4321#4304#4309#4304#4314#4312
            DataBinding.FieldName = 'INCOME_AMOUNT'
            Width = 110
          end
          object cxGrid2DBTableView1PAY_DATE: TcxGridDBColumn
            Caption = #4306#4304#4307#4304#4334#4307#4312#4321' '#4307#4320#4317
            DataBinding.FieldName = 'PAY_DATE'
            Width = 110
          end
          object cxGrid2DBTableView1EMAIL: TcxGridDBColumn
            Caption = #4324#4317#4321#4322#4304
            DataBinding.FieldName = 'EMAIL'
            Width = 110
          end
          object cxGrid2DBTableView1ID_OFFER: TcxGridDBColumn
            DataBinding.FieldName = 'ID_OFFER'
            Visible = False
          end
          object cxGrid2DBTableView1OFFER_NUMBER: TcxGridDBColumn
            DataBinding.FieldName = 'OFFER_NUMBER'
            Visible = False
            Width = 110
          end
          object cxGrid2DBTableView1ID_FOR_LANG: TcxGridDBColumn
            DataBinding.FieldName = 'ID_FOR_LANG'
            Visible = False
          end
          object cxGrid2DBTableView1ID_LANG: TcxGridDBColumn
            DataBinding.FieldName = 'ID_LANG'
            Visible = False
          end
          object cxGrid2DBTableView1ID_PARTNER: TcxGridDBColumn
            DataBinding.FieldName = 'ID_PARTNER'
            Visible = False
          end
          object cxGrid2DBTableView1ID_TND: TcxGridDBColumn
            DataBinding.FieldName = 'ID_TND'
            Visible = False
          end
          object cxGrid2DBTableView1OFFER_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'OFFER_NAME'
            Visible = False
          end
          object cxGrid2DBTableView1IS_ACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_ACTIVE'
            Visible = False
          end
          object cxGrid2DBTableView1STATUS_FLAG: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS_FLAG'
            Visible = False
          end
          object cxGrid2DBTableView1TYPE_FLAG: TcxGridDBColumn
            DataBinding.FieldName = 'TYPE_FLAG'
            Visible = False
          end
          object cxGrid2DBTableView1CREATE_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'CREATE_DATE'
            Visible = False
          end
          object cxGrid2DBTableView1PUBLIC_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'PUBLIC_DATE'
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 624
    Top = 37
    Width = 348
    Height = 541
    Align = alRight
    TabOrder = 3
    OnNavigateComplete2 = WebBrowser1NavigateComplete2
    ControlData = {
      4C000000F8230000EA3700000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620B000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object cxSplitter2: TcxSplitter
    Left = 616
    Top = 37
    Width = 8
    Height = 541
    AlignSplitter = salRight
    ExplicitLeft = 512
    ExplicitTop = 240
    ExplicitHeight = 100
  end
  object qrShow_Tnd_For_Report: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      
        '  Show_Tnd_For_Report(:OUT_CURS, :IN_ID_TND, :IN_TND_NUMBER, :IN' +
        '_ID_USER_DATA, :IN_FIRST_DATE, :IN_LAST_DATE);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      
        '  Show_Tnd_For_Report(:OUT_CURS, :IN_ID_TND, :IN_TND_NUMBER, :IN' +
        '_ID_USER_DATA, :IN_FIRST_DATE, :IN_LAST_DATE);'
      'end;')
    Left = 104
    Top = 137
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_TND'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'IN_TND_NUMBER'
        ParamType = ptInput
        Value = nil
      end
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
      end>
    object qrShow_Tnd_For_ReportID_TND: TFloatField
      FieldName = 'ID_TND'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportTND_NAME: TWideStringField
      FieldName = 'TND_NAME'
      ReadOnly = True
      Size = 255
    end
    object qrShow_Tnd_For_ReportTND_NUMBER: TWideStringField
      FieldName = 'TND_NUMBER'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrShow_Tnd_For_ReportID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportID_TND_TYPE_LIB: TFloatField
      FieldName = 'ID_TND_TYPE_LIB'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportID_TND_STATUS_LIB: TFloatField
      FieldName = 'ID_TND_STATUS_LIB'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportCREATE_TIME: TSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportACTIVATE_TIME: TSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
      ReadOnly = True
    end
    object qrShow_Tnd_For_ReportCHANGE_TIME: TSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      ReadOnly = True
    end
    object qrShow_Tnd_For_ReportTND_AMOUNT: TFloatField
      FieldName = 'TND_AMOUNT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportBIDDING_AMOUNT: TFloatField
      FieldName = 'BIDDING_AMOUNT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportBIDDING_PERCENT: TFloatField
      FieldName = 'BIDDING_PERCENT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportIS_VAT: TFloatField
      FieldName = 'IS_VAT'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportID_VALUTA: TFloatField
      FieldName = 'ID_VALUTA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportIS_CLOSED: TFloatField
      FieldName = 'IS_CLOSED'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportIS_CONFID: TFloatField
      FieldName = 'IS_CONFID'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportPRICE_ACCEPT_HOUR: TFloatField
      FieldName = 'PRICE_ACCEPT_HOUR'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportFORM_FLAG: TFloatField
      FieldName = 'FORM_FLAG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Tnd_For_ReportOFFERS_IN_TND_COUNT: TFloatField
      FieldName = 'OFFERS_IN_TND_COUNT'
      ReadOnly = True
    end
    object qrShow_Tnd_For_ReportINCOME_AMOUNT: TFloatField
      FieldName = 'INCOME_AMOUNT'
      ReadOnly = True
    end
    object qrShow_Tnd_For_ReportUSER_NAME: TWideStringField
      FieldName = 'USER_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Tnd_For_ReportNOTE: TWideStringField
      FieldName = 'NOTE'
      ReadOnly = True
      Size = 4000
    end
  end
  object dsShow_Tnd_For_Report: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Tnd_For_Report
    OnDataChange = dsShow_Tnd_For_ReportDataChange
    Left = 104
    Top = 209
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -11
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -11
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    OnShowHint = cxHintStyleController1ShowHint
    Left = 408
    Top = 205
  end
  object qrShow_Offer_By_tnd: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Offer_By_tnd1(:OUT_CURS, :ID_TND);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Offer_By_tnd1(:OUT_CURS, :ID_TND);'
      'end;')
    MasterSource = dsShow_Tnd_For_Report
    MasterFields = 'ID_TND'
    DetailFields = 'ID_TND'
    IndexFieldNames = 'ID_TND'
    Left = 256
    Top = 129
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
    object qrShow_Offer_By_tndEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Offer_By_tndPUBLIC_DATE: TDateTimeField
      FieldName = 'PUBLIC_DATE'
      ReadOnly = True
    end
    object qrShow_Offer_By_tndPAY_DATE: TDateTimeField
      FieldName = 'PAY_DATE'
      ReadOnly = True
    end
  end
  object dsShow_Offer_By_tnd: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Offer_By_tnd
    Left = 256
    Top = 201
  end
end
