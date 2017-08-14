unit fAll_Tenders;

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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, dxStatusBar, fDM, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, DBAccess, Uni, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxScreenTip, dxCustomHint, cxHint, cxSplitter, Vcl.OleCtrls, SHDocVw;

type
  TfrmAll_Tenders = class(TForm)
    dxStatusBar1: TdxStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    deLast: TcxDateEdit;
    deFirst: TcxDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrShow_Tnd_For_Report: TUniQuery;
    dsShow_Tnd_For_Report: TUniDataSource;
    qrShow_Tnd_For_ReportID_TND: TFloatField;
    qrShow_Tnd_For_ReportTND_NAME: TWideStringField;
    qrShow_Tnd_For_ReportTND_NUMBER: TWideStringField;
    qrShow_Tnd_For_ReportID_USER_DATA: TFloatField;
    qrShow_Tnd_For_ReportID_TND_TYPE_LIB: TFloatField;
    qrShow_Tnd_For_ReportID_TND_STATUS_LIB: TFloatField;
    qrShow_Tnd_For_ReportCREATE_TIME: TSQLTimeStampField;
    qrShow_Tnd_For_ReportACTIVATE_TIME: TSQLTimeStampField;
    qrShow_Tnd_For_ReportCHANGE_TIME: TSQLTimeStampField;
    qrShow_Tnd_For_ReportTND_AMOUNT: TFloatField;
    qrShow_Tnd_For_ReportBIDDING_AMOUNT: TFloatField;
    qrShow_Tnd_For_ReportBIDDING_PERCENT: TFloatField;
    qrShow_Tnd_For_ReportIS_VAT: TFloatField;
    qrShow_Tnd_For_ReportID_VALUTA: TFloatField;
    qrShow_Tnd_For_ReportIS_CLOSED: TFloatField;
    qrShow_Tnd_For_ReportIS_CONFID: TFloatField;
    qrShow_Tnd_For_ReportPRICE_ACCEPT_HOUR: TFloatField;
    qrShow_Tnd_For_ReportFORM_FLAG: TFloatField;
    qrShow_Tnd_For_ReportOFFERS_IN_TND_COUNT: TFloatField;
    qrShow_Tnd_For_ReportINCOME_AMOUNT: TFloatField;
    qrShow_Tnd_For_ReportUSER_NAME: TWideStringField;
    cxHintStyleController1: TcxHintStyleController;
    cxGrid1DBTableView1ID_TND: TcxGridDBColumn;
    cxGrid1DBTableView1TND_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TND_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TND_TYPE_LIB: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TND_STATUS_LIB: TcxGridDBColumn;
    cxGrid1DBTableView1CREATE_TIME: TcxGridDBColumn;
    cxGrid1DBTableView1ACTIVATE_TIME: TcxGridDBColumn;
    cxGrid1DBTableView1CHANGE_TIME: TcxGridDBColumn;
    cxGrid1DBTableView1TND_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1BIDDING_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1BIDDING_PERCENT: TcxGridDBColumn;
    cxGrid1DBTableView1IS_VAT: TcxGridDBColumn;
    cxGrid1DBTableView1ID_VALUTA: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE: TcxGridDBColumn;
    cxGrid1DBTableView1IS_CLOSED: TcxGridDBColumn;
    cxGrid1DBTableView1IS_CONFID: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE_ACCEPT_HOUR: TcxGridDBColumn;
    cxGrid1DBTableView1FORM_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1OFFERS_IN_TND_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1INCOME_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    qrShow_Offer_By_tnd: TUniQuery;
    qrShow_Offer_By_tndID_OFFER: TFloatField;
    qrShow_Offer_By_tndID_FOR_LANG: TFloatField;
    qrShow_Offer_By_tndID_LANG: TFloatField;
    qrShow_Offer_By_tndID_PARTNER: TFloatField;
    qrShow_Offer_By_tndID_TND: TFloatField;
    qrShow_Offer_By_tndOFFER_NUMBER: TWideStringField;
    qrShow_Offer_By_tndOFFER_NAME: TWideStringField;
    qrShow_Offer_By_tndIS_ACTIVE: TFloatField;
    qrShow_Offer_By_tndSTATUS_FLAG: TFloatField;
    qrShow_Offer_By_tndTYPE_FLAG: TFloatField;
    qrShow_Offer_By_tndCREATE_DATE: TSQLTimeStampField;
    qrShow_Offer_By_tndOFFER_AMOUNT: TFloatField;
    qrShow_Offer_By_tndINCOME_AMOUNT: TFloatField;
    qrShow_Offer_By_tndIDENTITY_NAME: TWideStringField;
    qrShow_Offer_By_tndEMAIL: TWideStringField;
    dsShow_Offer_By_tnd: TUniDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1ID_OFFER: TcxGridDBColumn;
    cxGrid2DBTableView1ID_FOR_LANG: TcxGridDBColumn;
    cxGrid2DBTableView1ID_LANG: TcxGridDBColumn;
    cxGrid2DBTableView1ID_PARTNER: TcxGridDBColumn;
    cxGrid2DBTableView1ID_TND: TcxGridDBColumn;
    cxGrid2DBTableView1OFFER_NUMBER: TcxGridDBColumn;
    cxGrid2DBTableView1OFFER_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1IS_ACTIVE: TcxGridDBColumn;
    cxGrid2DBTableView1STATUS_FLAG: TcxGridDBColumn;
    cxGrid2DBTableView1TYPE_FLAG: TcxGridDBColumn;
    cxGrid2DBTableView1CREATE_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1PUBLIC_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1OFFER_AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1INCOME_AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1IDENTITY_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1PAY_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1EMAIL: TcxGridDBColumn;
    qrShow_Offer_By_tndPUBLIC_DATE: TDateTimeField;
    qrShow_Offer_By_tndPAY_DATE: TDateTimeField;
    qrShow_Tnd_For_ReportNOTE: TWideStringField;
    Panel3: TPanel;
    WebBrowser1: TWebBrowser;
    cxSplitter2: TcxSplitter;
    procedure cxHintStyleController1ShowHint(Sender: TObject; var HintStr: string; var CanShow: Boolean;
      var HintInfo: THintInfo);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsShow_Tnd_For_ReportDataChange(Sender: TObject; Field: TField);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    FNavigate_Complate: Boolean;
    procedure Filret_date;
  public
    procedure InitForm;
  end;

var
  frmAll_Tenders: TfrmAll_Tenders;

implementation

{$R *.dfm}

uses uCommon, MSHTML;
{ TfrmAll_Tenders }

procedure TfrmAll_Tenders.cxHintStyleController1ShowHint(Sender: TObject; var HintStr: string; var CanShow: Boolean;
  var HintInfo: THintInfo);
begin
  HintInfo.HintMaxWidth:= 400;
end;

procedure TfrmAll_Tenders.dsShow_Tnd_For_ReportDataChange(Sender: TObject;
  Field: TField);
var
  St: string;
  htmlDoc: IHTMLDocument2;
begin
  if FNavigate_Complate = false then
    exit;
  try
    St:= qrShow_Tnd_For_Report.FieldByName('NOTE').AsString;

    htmlDoc := WebBrowser1.Document as IHTMLDocument2;
    htmlDoc.body.innerHTML:= St;
  except

  end;
end;

procedure TfrmAll_Tenders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmAll_Tenders.InitForm;
begin
  FNavigate_Complate:= false;
  WebBrowser1.Navigate('about:blank');

  qrShow_Tnd_For_Report.Open;
  qrShow_Offer_By_tnd.Open;
end;

procedure TfrmAll_Tenders.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  FNavigate_Complate:= true;
end;

procedure TfrmAll_Tenders.Filret_date;
var
  Curr: Double;
  D: Variant;
begin
  if qrShow_Tnd_For_Report.Active then
    qrShow_Tnd_For_Report.Close;

  qrShow_Tnd_For_Report.Prepare;

  D:= deLast.EditValue;
  if not VarIsNull(D) then
    qrShow_Tnd_For_Report.ParamByName('in_last_date').AsDate:= D;

  D:= deFirst.EditValue;
  if not VarIsNull(D) then
    qrShow_Tnd_For_Report.ParamByName('in_first_date').AsDate:= D;

  qrShow_Tnd_For_Report.Open;
end;

end.
