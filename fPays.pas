unit fPays;

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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, dxStatusBar,
  DBAccess, Uni, MemDS, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmPays = class(TForm)
    dxStatusBar1: TdxStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrShow_Payment_For_Report: TUniQuery;
    dsShow_Payment_For_Report: TUniDataSource;
    qrShow_Payment_For_ReportID_PAYMENT_LOG: TFloatField;
    qrShow_Payment_For_ReportID_USER_DATA: TFloatField;
    qrShow_Payment_For_ReportPAYER_NAME: TWideStringField;
    qrShow_Payment_For_ReportID_TND: TFloatField;
    qrShow_Payment_For_ReportTND_NUMBER: TWideStringField;
    qrShow_Payment_For_ReportID_OFFER: TFloatField;
    qrShow_Payment_For_ReportOFFERER: TWideStringField;
    qrShow_Payment_For_ReportPAY_DATE: TDateTimeField;
    qrShow_Payment_For_ReportPAY_AMOUNT: TFloatField;
    qrShow_Payment_For_ReportTARGET: TWideStringField;
    cxGrid1DBTableView1ID_PAYMENT_LOG: TcxGridDBColumn;
    cxGrid1DBTableView1ID_USER_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1PAYER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TND: TcxGridDBColumn;
    cxGrid1DBTableView1TND_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1ID_OFFER: TcxGridDBColumn;
    cxGrid1DBTableView1OFFERER: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1TARGET: TcxGridDBColumn;
    deLast: TcxDateEdit;
    deFirst: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Filret_date;
    { Private declarations }
  public
    procedure InitForm;
  end;

var
  frmPays: TfrmPays;

implementation

{$R *.dfm}

uses fDM;

procedure TfrmPays.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmPays.InitForm;
begin
  qrShow_Payment_For_Report.Open;
end;

procedure TfrmPays.Filret_date;
var
  Curr: Double;
  D: Variant;
begin
  if qrShow_Payment_For_Report.Active then
    qrShow_Payment_For_Report.Close;

  qrShow_Payment_For_Report.Prepare;

  D:= deLast.EditValue;
  if not VarIsNull(D) then
    qrShow_Payment_For_Report.ParamByName('in_last_date').AsDate:= D;

  D:= deFirst.EditValue;
  if not VarIsNull(D) then
    qrShow_Payment_For_Report.ParamByName('in_first_date').AsDate:= D;

  qrShow_Payment_For_Report.Open;
end;

end.
