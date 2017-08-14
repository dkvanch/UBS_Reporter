object frmStatistic: TfrmStatistic
  Left = 0
  Top = 0
  Caption = #4313#4304#4322#4308#4306#4317#4320#4312#4308#4305#4312' '#4315#4317#4315#4334#4315#4304#4320#4308#4305#4314#4308#4305#4312#4321' '#4315#4312#4334#4308#4307#4309#4312#4311
  ClientHeight = 613
  ClientWidth = 855
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
    Top = 593
    Width = 855
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 855
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 855
    Height = 552
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 552
      Height = 550
      Align = alLeft
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Users_For_Category
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1IDENTITY_CODE: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_CODE'
        end
        object cxGrid1DBTableView1IDENTITY_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_NAME'
          Width = 124
        end
        object cxGrid1DBTableView1CATEGORY_COUNT: TcxGridDBColumn
          DataBinding.FieldName = 'CATEGORY_COUNT'
        end
        object cxGrid1DBTableView1JURIDICAL_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'JURIDICAL_STATUS'
          Width = 124
        end
        object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
          Width = 124
        end
        object cxGrid1DBTableView1REG_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'REG_DATE'
          Visible = False
          Width = 124
        end
        object cxGrid1DBTableView1REPRESENTATIVE_LNAME: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_LNAME'
          Visible = False
        end
        object cxGrid1DBTableView1REPRESENTATIVE_FNAME: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_FNAME'
          Visible = False
        end
        object cxGrid1DBTableView1REPRESENTATIVE_PERSONALID: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_PERSONALID'
          Visible = False
        end
        object cxGrid1DBTableView1REPRESENTATIVE_CARDNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'REPRESENTATIVE_CARDNUMBER'
          Visible = False
        end
        object cxGrid1DBTableView1IDENTITY_CARDNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_CARDNUMBER'
          Visible = False
          Width = 124
        end
        object cxGrid1DBTableView1IS_ACTIVE: TcxGridDBColumn
          DataBinding.FieldName = 'IS_ACTIVE'
          Visible = False
        end
        object cxGrid1DBTableView1ACTIVE_TXT: TcxGridDBColumn
          DataBinding.FieldName = 'ACTIVE_TXT'
          Visible = False
        end
        object cxGrid1DBTableView1IDENTITY_LNAME: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_LNAME'
          Visible = False
        end
        object cxGrid1DBTableView1IDENTITY_FNAME: TcxGridDBColumn
          DataBinding.FieldName = 'IDENTITY_FNAME'
          Visible = False
        end
        object cxGrid1DBTableView1PARENT_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_NAME'
          Visible = False
        end
        object cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA'
          Visible = False
        end
        object cxGrid1DBTableView1ID_USER_DATA_PARENT: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA_PARENT'
          Visible = False
        end
        object cxGrid1DBTableView1ID_JURIDICAL_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_JURIDICAL_STATUS'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 553
      Top = 1
      Width = 8
      Height = 550
    end
    object cxGrid2: TcxGrid
      Left = 561
      Top = 1
      Width = 293
      Height = 550
      Align = alClient
      TabOrder = 2
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsShow_Categories_By_User
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid2DBTableView1ITEM_GROUP_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_GROUP_NAME'
          Width = 259
        end
        object cxGrid2DBTableView1ID_USER_DATA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_USER_DATA'
          Visible = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object qrShow_Users_For_Category: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Users_For_Category(:OUT_CURS_REGISTER_INFO);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Users_For_Category(:OUT_CURS_REGISTER_INFO);'
      'end;')
    Left = 176
    Top = 177
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS_REGISTER_INFO'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object qrShow_Users_For_CategoryID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_CategoryID_USER_DATA_PARENT: TFloatField
      FieldName = 'ID_USER_DATA_PARENT'
      ReadOnly = True
    end
    object qrShow_Users_For_CategoryID_JURIDICAL_STATUS: TFloatField
      FieldName = 'ID_JURIDICAL_STATUS'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_CategoryJURIDICAL_STATUS: TWideStringField
      FieldName = 'JURIDICAL_STATUS'
      ReadOnly = True
      Required = True
      Size = 1000
    end
    object qrShow_Users_For_CategoryIDENTITY_CODE: TWideStringField
      FieldName = 'IDENTITY_CODE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_CategoryIDENTITY_NAME: TWideStringField
      FieldName = 'IDENTITY_NAME'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Users_For_CategoryIDENTITY_LNAME: TWideStringField
      FieldName = 'IDENTITY_LNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryIDENTITY_FNAME: TWideStringField
      FieldName = 'IDENTITY_FNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryIDENTITY_CARDNUMBER: TWideStringField
      FieldName = 'IDENTITY_CARDNUMBER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryREPRESENTATIVE_LNAME: TWideStringField
      FieldName = 'REPRESENTATIVE_LNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryREPRESENTATIVE_FNAME: TWideStringField
      FieldName = 'REPRESENTATIVE_FNAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryREPRESENTATIVE_PERSONALID: TWideStringField
      FieldName = 'REPRESENTATIVE_PERSONALID'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryREPRESENTATIVE_CARDNUMBER: TWideStringField
      FieldName = 'REPRESENTATIVE_CARDNUMBER'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Users_For_CategoryIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_For_CategoryACTIVE_TXT: TWideStringField
      FieldName = 'ACTIVE_TXT'
      ReadOnly = True
      Size = 47
    end
    object qrShow_Users_For_CategoryREG_DATE: TDateTimeField
      FieldName = 'REG_DATE'
      ReadOnly = True
    end
    object qrShow_Users_For_CategoryPARENT_NAME: TWideStringField
      FieldName = 'PARENT_NAME'
      ReadOnly = True
      Size = 200
    end
    object qrShow_Users_For_CategoryCATEGORY_COUNT: TFloatField
      FieldName = 'CATEGORY_COUNT'
      ReadOnly = True
    end
  end
  object dsShow_Users_For_Category: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Users_For_Category
    Left = 176
    Top = 233
  end
  object qrShow_Categories_By_User: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Categories_By_User(:CURS, :ID_USER, :IN_ID_LANGUAGE);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      
        '  Show_Categories_By_User(:CURS, :ID_USER_Data, :IN_ID_LANGUAGE)' +
        ';'
      'end;')
    MasterSource = dsShow_Users_For_Category
    MasterFields = 'ID_USER_DATA'
    DetailFields = 'ID_USER_DATA'
    Left = 648
    Top = 153
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'ID_USER_Data'
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_LANGUAGE'
        ParamType = ptInput
        Value = nil
      end>
    object qrShow_Categories_By_UserITEM_GROUP_NAME: TWideStringField
      FieldName = 'ITEM_GROUP_NAME'
      ReadOnly = True
      Required = True
      Size = 1000
    end
    object qrShow_Categories_By_UserID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
  end
  object dsShow_Categories_By_User: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Categories_By_User
    Left = 648
    Top = 217
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
    HintStyle.Rounded = True
    OnShowHint = cxHintStyleController1ShowHint
    Left = 672
    Top = 385
  end
end
