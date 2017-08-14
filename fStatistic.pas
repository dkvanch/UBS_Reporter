unit fStatistic;

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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, Vcl.ExtCtrls, dxStatusBar, fDM,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, DBAccess, Uni, MemDS, cxSplitter,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxScreenTip, dxCustomHint, cxHint;

type
  TfrmStatistic = class(TForm)
    dxStatusBar1: TdxStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qrShow_Users_For_Category: TUniQuery;
    dsShow_Users_For_Category: TUniDataSource;
    qrShow_Users_For_CategoryID_USER_DATA: TFloatField;
    qrShow_Users_For_CategoryID_USER_DATA_PARENT: TFloatField;
    qrShow_Users_For_CategoryID_JURIDICAL_STATUS: TFloatField;
    qrShow_Users_For_CategoryJURIDICAL_STATUS: TWideStringField;
    qrShow_Users_For_CategoryIDENTITY_CODE: TWideStringField;
    qrShow_Users_For_CategoryIDENTITY_NAME: TWideStringField;
    qrShow_Users_For_CategoryIDENTITY_LNAME: TWideStringField;
    qrShow_Users_For_CategoryIDENTITY_FNAME: TWideStringField;
    qrShow_Users_For_CategoryIDENTITY_CARDNUMBER: TWideStringField;
    qrShow_Users_For_CategoryREPRESENTATIVE_LNAME: TWideStringField;
    qrShow_Users_For_CategoryREPRESENTATIVE_FNAME: TWideStringField;
    qrShow_Users_For_CategoryREPRESENTATIVE_PERSONALID: TWideStringField;
    qrShow_Users_For_CategoryREPRESENTATIVE_CARDNUMBER: TWideStringField;
    qrShow_Users_For_CategoryEMAIL: TWideStringField;
    qrShow_Users_For_CategoryIS_ACTIVE: TFloatField;
    qrShow_Users_For_CategoryACTIVE_TXT: TWideStringField;
    qrShow_Users_For_CategoryREG_DATE: TDateTimeField;
    qrShow_Users_For_CategoryPARENT_NAME: TWideStringField;
    qrShow_Users_For_CategoryCATEGORY_COUNT: TFloatField;
    cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_USER_DATA_PARENT: TcxGridDBColumn;
    cxGrid1DBTableView1ID_JURIDICAL_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1JURIDICAL_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_LNAME: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_FNAME: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_CARDNUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1REPRESENTATIVE_LNAME: TcxGridDBColumn;
    cxGrid1DBTableView1REPRESENTATIVE_FNAME: TcxGridDBColumn;
    cxGrid1DBTableView1REPRESENTATIVE_PERSONALID: TcxGridDBColumn;
    cxGrid1DBTableView1REPRESENTATIVE_CARDNUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1IS_ACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1ACTIVE_TXT: TcxGridDBColumn;
    cxGrid1DBTableView1REG_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CATEGORY_COUNT: TcxGridDBColumn;
    qrShow_Categories_By_User: TUniQuery;
    dsShow_Categories_By_User: TUniDataSource;
    qrShow_Categories_By_UserITEM_GROUP_NAME: TWideStringField;
    qrShow_Categories_By_UserID_USER_DATA: TFloatField;
    cxGrid2DBTableView1ITEM_GROUP_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1ID_USER_DATA: TcxGridDBColumn;
    cxHintStyleController1: TcxHintStyleController;
    procedure cxHintStyleController1ShowHint(Sender: TObject;
      var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure InitForm;
  end;

var
  frmStatistic: TfrmStatistic;

implementation

{$R *.dfm}
{ TfrmStatistic }

procedure TfrmStatistic.cxHintStyleController1ShowHint(Sender: TObject;
  var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
begin
  HintInfo.HintMaxWidth:= 400;
end;

procedure TfrmStatistic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmStatistic.InitForm;
begin
  qrShow_Users_For_Category.Open;
  qrShow_Categories_By_User.ParamByName('In_Id_Language').AsInteger:= 1;
  qrShow_Categories_By_User.Open;
end;

end.
