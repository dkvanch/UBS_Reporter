object frmUsers_By_Category: TfrmUsers_By_Category
  Left = 0
  Top = 0
  Caption = #4315#4317#4315#4334#4315#4304#4320#4308#4305#4314#4308#4305#4312' '#4313#4304#4322#4308#4306#4317#4320#4312#4308#4305#4312#4321' '#4315#4312#4334#4308#4307#4309#4312#4311
  ClientHeight = 564
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 544
    Width = 937
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = -102
    ExplicitTop = 472
    ExplicitWidth = 855
  end
  object tbl_Item_Group: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 388
    Height = 544
    Align = alLeft
    Bands = <
      item
      end>
    DataController.DataSource = dsShow_Item_Group_for_link
    DataController.ParentField = 'PARENT_ID_ITEM_GROUP'
    DataController.KeyField = 'ID_ITEM_GROUP'
    DragMode = dmAutomatic
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.CellHints = True
    OptionsBehavior.IncSearch = True
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.HideFocusRect = False
    OptionsView.ColumnAutoWidth = True
    OptionsView.ExtPaintStyle = True
    RootValue = -1
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = -226
    ExplicitHeight = 718
    object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
      DataBinding.FieldName = 'ITEM_GROUP_NAME'
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'ID_ITEM_GROUP'
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object cxGrid1: TcxGrid
    Left = 396
    Top = 0
    Width = 541
    Height = 544
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 416
    ExplicitTop = 24
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dsShow_Users_By_Category
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBTableView1IDENTITY_CODE
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.RecordScrollMode = rsmByRecord
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.CellTextMaxLineCount = 2
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.Indicator = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object cxGrid1DBTableView1ID_ITEM_GROUP: TcxGridDBColumn
        DataBinding.FieldName = 'ID_ITEM_GROUP'
        Visible = False
      end
      object cxGrid1DBTableView1IDENTITY_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY_CODE'
        Width = 99
      end
      object cxGrid1DBTableView1IDENTITY_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY_NAME'
        Width = 209
      end
      object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
        Width = 158
      end
      object cxGrid1DBTableView1REG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Width = 69
      end
      object cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'ID_USER_DATA'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 388
    Top = 0
    Width = 8
    Height = 544
    ExplicitLeft = 704
    ExplicitTop = 424
    ExplicitHeight = 100
  end
  object dsShow_Item_Group_for_link: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Item_Group_for_link
    Left = 205
    Top = 256
  end
  object qrShow_Item_Group_for_link: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Item_Group_for_link(:OUT_CURS);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Item_Group_for_link(:OUT_CURS);'
      'end;')
    Left = 205
    Top = 192
    ParamData = <
      item
        DataType = ftCursor
        Name = 'OUT_CURS'
        ParamType = ptOutput
        Value = ''
      end>
    object qrShow_Item_Group_for_linkID_ITEM_GROUP: TFloatField
      FieldName = 'ID_ITEM_GROUP'
      ReadOnly = True
      Required = True
    end
    object qrShow_Item_Group_for_linkPARENT_ID_ITEM_GROUP: TFloatField
      FieldName = 'PARENT_ID_ITEM_GROUP'
      ReadOnly = True
    end
    object qrShow_Item_Group_for_linkITEM_GROUP_NAME: TWideStringField
      FieldName = 'ITEM_GROUP_NAME'
      ReadOnly = True
      Size = 4000
    end
    object qrShow_Item_Group_for_linkNUMBER_IN_LEVEL: TFloatField
      FieldName = 'NUMBER_IN_LEVEL'
      ReadOnly = True
    end
  end
  object qrShow_Users_By_Category: TUniQuery
    SQLRefresh.Strings = (
      'begin'
      '  Show_Users_By_Category(:CURS, :ID_ITEM_GROUP);'
      'end;')
    Connection = DM.UniConnection1
    SQL.Strings = (
      'begin'
      '  Show_Users_By_Category(:CURS, :ID_ITEM_GROUP);'
      'end;')
    MasterSource = dsShow_Item_Group_for_link
    MasterFields = 'ID_ITEM_GROUP'
    DetailFields = 'ID_ITEM_GROUP'
    Left = 520
    Top = 136
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURS'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'ID_ITEM_GROUP'
        Value = nil
      end>
    object qrShow_Users_By_CategoryID_ITEM_GROUP: TFloatField
      FieldName = 'ID_ITEM_GROUP'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_By_CategoryIDENTITY_CODE: TWideStringField
      FieldName = 'IDENTITY_CODE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_By_CategoryIDENTITY_NAME: TWideStringField
      FieldName = 'IDENTITY_NAME'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Users_By_CategoryEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object qrShow_Users_By_CategoryREG_DATE: TDateTimeField
      FieldName = 'REG_DATE'
      ReadOnly = True
      Required = True
    end
    object qrShow_Users_By_CategoryID_USER_DATA: TFloatField
      FieldName = 'ID_USER_DATA'
      ReadOnly = True
      Required = True
    end
  end
  object dsShow_Users_By_Category: TUniDataSource
    AutoEdit = False
    DataSet = qrShow_Users_By_Category
    Left = 520
    Top = 192
  end
end
