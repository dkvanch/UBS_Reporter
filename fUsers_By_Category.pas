unit fUsers_By_Category;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, Data.DB, MemDS, DBAccess, Uni,
  dxStatusBar, cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxInplaceContainer, cxDBTL,
  cxTLData, cxSplitter;

type
  TfrmUsers_By_Category = class(TForm)
    dxStatusBar1: TdxStatusBar;
    dsShow_Item_Group_for_link: TUniDataSource;
    qrShow_Item_Group_for_link: TUniQuery;
    qrShow_Item_Group_for_linkID_ITEM_GROUP: TFloatField;
    qrShow_Item_Group_for_linkPARENT_ID_ITEM_GROUP: TFloatField;
    qrShow_Item_Group_for_linkITEM_GROUP_NAME: TWideStringField;
    qrShow_Item_Group_for_linkNUMBER_IN_LEVEL: TFloatField;
    tbl_Item_Group: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrShow_Users_By_Category: TUniQuery;
    dsShow_Users_By_Category: TUniDataSource;
    qrShow_Users_By_CategoryID_ITEM_GROUP: TFloatField;
    qrShow_Users_By_CategoryIDENTITY_CODE: TWideStringField;
    qrShow_Users_By_CategoryIDENTITY_NAME: TWideStringField;
    qrShow_Users_By_CategoryEMAIL: TWideStringField;
    qrShow_Users_By_CategoryREG_DATE: TDateTimeField;
    qrShow_Users_By_CategoryID_USER_DATA: TFloatField;
    cxGrid1DBTableView1ID_ITEM_GROUP: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1REG_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure InitForm;
  end;

var
  frmUsers_By_Category: TfrmUsers_By_Category;

implementation

{$R *.dfm}

uses fDM;

{ TfrmUsers_By_Category }

procedure TfrmUsers_By_Category.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmUsers_By_Category.InitForm;
begin
  qrShow_Item_Group_for_link.Open;
  qrShow_Users_By_Category.Open;
end;

end.
