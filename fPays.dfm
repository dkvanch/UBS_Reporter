object frmPays: TfrmPays
  Left = 0
  Top = 0
  Caption = #4306#4304#4307#4304#4334#4307#4308#4305#4312
  ClientHeight = 431
  ClientWidth = 727
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
  PixelsPerInch = 96
  TextHeight = 16
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 411
    Width = 727
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = 344
    ExplicitTop = 296
    ExplicitWidth = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitTop = 176
    ExplicitWidth = 185
    object deLast: TcxDateEdit
      Left = 135
      Top = 11
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 121
    end
    object deFirst: TcxDateEdit
      Left = 8
      Top = 11
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 727
    Height = 370
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 144
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 725
      Height = 368
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 112
      ExplicitTop = 40
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Payment_For_Report
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1PAY_AMOUNT
          end
          item
            Kind = skCount
            Column = cxGrid1DBTableView1PAYER_NAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        object cxGrid1DBTableView1PAYER_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'PAYER_NAME'
          Width = 89
        end
        object cxGrid1DBTableView1PAY_AMOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'PAY_AMOUNT'
          Width = 100
        end
        object cxGrid1DBTableView1PAY_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'PAY_DATE'
          Width = 100
        end
        object cxGrid1DBTableView1TARGET: TcxGridDBColumn
          DataBinding.FieldName = 'TARGET'
          Width = 100
        end
        object cxGrid1DBTableView1TND_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'TND_NUMBER'
          Width = 100
        end
        object cxGrid1DBTableView1OFFERER: TcxGridDBColumn
          DataBinding.FieldName = 'OFFERER'
          Width = 100
        end
        object cxGrid1DBTableView1ID_PAYMENT_LOG: TcxGridDBColumn
          DataBinding.FieldName = 'ID_PAYMENT_LOG'
          Visible = False
        end
        object cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA'
          Visible = False
        end
        object cxGrid1DBTableView1ID_TND: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TND'
          Visible = False
        end
        object cxGrid1DBTableView1ID_OFFER: TcxGridDBColumn
          DataBinding.FieldName = 'ID_OFFER'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object qrShow_Payment_For_Report: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      
        '  Show_Payment_For_Report(:OUT_CURS, :IN_ID_USER_DATA, :IN_FIRST' +
        '_DATE, :IN_LAST_DATE);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      
        '  Show_Payment_For_Report(:OUT_CURS, :IN_ID_USER_DATA, :IN_FIRST' +
        '_DATE, :IN_LAST_DATE);'
      'end;')
    Left = 80
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
    object qrShow_Payment_For_ReportID_PAYMENT_LOG: TFloatField
      FieldName = 'ID_PAYMENT_LOG'
      ReadOnly = True
      Required = True
    end
    object qrShow_Payment_For_ReportID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Payment_For_ReportPAYER_NAME: TWideStringField
      FieldName = 'PAYER_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Payment_For_ReportID_TND: TFloatField
      FieldName = 'ID_TND'
      ReadOnly = True
      Required = True
    end
    object qrShow_Payment_For_ReportTND_NUMBER: TWideStringField
      FieldName = 'TND_NUMBER'
      ReadOnly = True
      Size = 50
    end
    object qrShow_Payment_For_ReportID_OFFER: TFloatField
      FieldName = 'ID_OFFER'
      ReadOnly = True
      Required = True
    end
    object qrShow_Payment_For_ReportOFFERER: TWideStringField
      FieldName = 'OFFERER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Payment_For_ReportPAY_DATE: TDateTimeField
      FieldName = 'PAY_DATE'
      ReadOnly = True
    end
    object qrShow_Payment_For_ReportPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      ReadOnly = True
    end
    object qrShow_Payment_For_ReportTARGET: TWideStringField
      FieldName = 'TARGET'
      ReadOnly = True
      Size = 50
    end
  end
  object dsShow_Payment_For_Report: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Payment_For_Report
    Left = 80
    Top = 193
  end
end
