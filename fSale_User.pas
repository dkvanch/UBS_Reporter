unit fSale_User;

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
  dxSkinXmas2008Blue, dxSkinsdxStatusBarPainter, cxSplitter, dxStatusBar,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, fDM, DBAccess, Uni, MemDS;

type
  TfrmSale_User = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dxStatusBar1: TdxStatusBar;
    Panel3: TPanel;
    cxSplitter1: TcxSplitter;
    tblSalers: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tblCompany: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qrSale_Man: TUniQuery;
    dsSale_Man: TUniDataSource;
    dsShow_Users_For_Sale: TUniDataSource;
    qrShow_Users_For_Sale: TUniQuery;
    qrSale_ManID_SALE_MAN: TFloatField;
    qrSale_ManFNAME: TWideStringField;
    qrSale_ManLNAME: TWideStringField;
    qrSale_ManPHONE_NUM: TWideStringField;
    qrSale_ManEMAIL: TWideStringField;
    qrSale_ManREG_DATE: TDateTimeField;
    tblSalersID_SALE_MAN: TcxGridDBColumn;
    tblSalersFNAME: TcxGridDBColumn;
    tblSalersLNAME: TcxGridDBColumn;
    tblSalersPHONE_NUM: TcxGridDBColumn;
    tblSalersEMAIL: TcxGridDBColumn;
    tblSalersREG_DATE: TcxGridDBColumn;
    qrSale_ManCOMPANY_COUNT: TFloatField;
    tblSalersCOMPANY_COUNT: TcxGridDBColumn;
    qrShow_Users_For_SaleID_USER_DATA: TFloatField;
    qrShow_Users_For_SaleID_USER_DATA_PARENT: TFloatField;
    qrShow_Users_For_SaleID_JURIDICAL_STATUS: TFloatField;
    qrShow_Users_For_SaleJURIDICAL_STATUS: TWideStringField;
    qrShow_Users_For_SaleIDENTITY_CODE: TWideStringField;
    qrShow_Users_For_SaleIDENTITY_NAME: TWideStringField;
    qrShow_Users_For_SaleIDENTITY_LNAME: TWideStringField;
    qrShow_Users_For_SaleIDENTITY_FNAME: TWideStringField;
    qrShow_Users_For_SaleIDENTITY_CARDNUMBER: TWideStringField;
    qrShow_Users_For_SaleREPRESENTATIVE_LNAME: TWideStringField;
    qrShow_Users_For_SaleREPRESENTATIVE_FNAME: TWideStringField;
    qrShow_Users_For_SaleREPRESENTATIVE_PERSONALID: TWideStringField;
    qrShow_Users_For_SaleREPRESENTATIVE_CARDNUMBER: TWideStringField;
    qrShow_Users_For_SaleEMAIL: TWideStringField;
    qrShow_Users_For_SaleIS_ACTIVE: TFloatField;
    qrShow_Users_For_SaleACTIVE_TXT: TWideStringField;
    qrShow_Users_For_SaleREG_DATE: TDateTimeField;
    qrShow_Users_For_SalePARENT_NAME: TWideStringField;
    qrShow_Users_For_SaleTND_COUNT: TFloatField;
    qrShow_Users_For_SaleOFFER_COUNT: TFloatField;
    qrShow_Users_For_SaleMANAGER: TWideStringField;
    tblCompanyID_USER_DATA: TcxGridDBColumn;
    tblCompanyID_USER_DATA_PARENT: TcxGridDBColumn;
    tblCompanyID_JURIDICAL_STATUS: TcxGridDBColumn;
    tblCompanyJURIDICAL_STATUS: TcxGridDBColumn;
    tblCompanyIDENTITY_CODE: TcxGridDBColumn;
    tblCompanyIDENTITY_NAME: TcxGridDBColumn;
    tblCompanyIDENTITY_LNAME: TcxGridDBColumn;
    tblCompanyIDENTITY_FNAME: TcxGridDBColumn;
    tblCompanyIDENTITY_CARDNUMBER: TcxGridDBColumn;
    tblCompanyREPRESENTATIVE_LNAME: TcxGridDBColumn;
    tblCompanyREPRESENTATIVE_FNAME: TcxGridDBColumn;
    tblCompanyREPRESENTATIVE_PERSONALID: TcxGridDBColumn;
    tblCompanyREPRESENTATIVE_CARDNUMBER: TcxGridDBColumn;
    tblCompanyEMAIL: TcxGridDBColumn;
    tblCompanyIS_ACTIVE: TcxGridDBColumn;
    tblCompanyACTIVE_TXT: TcxGridDBColumn;
    tblCompanyREG_DATE: TcxGridDBColumn;
    tblCompanyPARENT_NAME: TcxGridDBColumn;
    tblCompanyTND_COUNT: TcxGridDBColumn;
    tblCompanyOFFER_COUNT: TcxGridDBColumn;
    tblCompanyMANAGER: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure InitForm;
  end;

var
  frmSale_User: TfrmSale_User;

implementation

{$R *.dfm}

{ TfrmSale_User }

procedure TfrmSale_User.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmSale_User.InitForm;
begin
  qrSale_Man.Open;
  qrShow_Users_For_Sale.Open;
end;

end.
