unit fTenders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  fDM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Uni, MemDS, uCommon, Winapi.ShellAPI,
  dxSkinsdxStatusBarPainter, Vcl.Buttons, dxStatusBar;

const
  Tender_url = 'http://nr.ge/class/tenders_view.php?it=%s';

type
  TfrmTenders = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblCaption: TLabel;
    tblTenders: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrShow_Tnd_By_User: TUniQuery;
    dsShow_Tnd_By_User: TUniDataSource;
    qrShow_Tnd_By_UserID_TND: TFloatField;
    qrShow_Tnd_By_UserTND_NAME: TWideStringField;
    qrShow_Tnd_By_UserTND_NUMBER: TWideStringField;
    qrShow_Tnd_By_UserID_USER_DATA: TFloatField;
    qrShow_Tnd_By_UserID_TND_TYPE_LIB: TFloatField;
    qrShow_Tnd_By_UserID_TND_STATUS_LIB: TFloatField;
    qrShow_Tnd_By_UserCREATE_TIME: TSQLTimeStampField;
    qrShow_Tnd_By_UserACTIVATE_TIME: TSQLTimeStampField;
    qrShow_Tnd_By_UserCHANGE_TIME: TSQLTimeStampField;
    qrShow_Tnd_By_UserTND_AMOUNT: TFloatField;
    qrShow_Tnd_By_UserBIDDING_AMOUNT: TFloatField;
    qrShow_Tnd_By_UserBIDDING_PERCENT: TFloatField;
    qrShow_Tnd_By_UserIS_VAT: TFloatField;
    qrShow_Tnd_By_UserID_VALUTA: TFloatField;
    qrShow_Tnd_By_UserNOTE: TWideStringField;
    qrShow_Tnd_By_UserIS_CLOSED: TFloatField;
    qrShow_Tnd_By_UserIS_CONFID: TFloatField;
    qrShow_Tnd_By_UserPRICE_ACCEPT_HOUR: TFloatField;
    qrShow_Tnd_By_UserFORM_FLAG: TFloatField;
    tblTendersID_TND: TcxGridDBColumn;
    tblTendersTND_NAME: TcxGridDBColumn;
    tblTendersTND_NUMBER: TcxGridDBColumn;
    tblTendersID_USER_DATA: TcxGridDBColumn;
    tblTendersID_TND_TYPE_LIB: TcxGridDBColumn;
    tblTendersID_TND_STATUS_LIB: TcxGridDBColumn;
    tblTendersCREATE_TIME: TcxGridDBColumn;
    tblTendersACTIVATE_TIME: TcxGridDBColumn;
    tblTendersCHANGE_TIME: TcxGridDBColumn;
    tblTendersTND_AMOUNT: TcxGridDBColumn;
    tblTendersBIDDING_AMOUNT: TcxGridDBColumn;
    tblTendersBIDDING_PERCENT: TcxGridDBColumn;
    tblTendersIS_VAT: TcxGridDBColumn;
    tblTendersID_VALUTA: TcxGridDBColumn;
    tblTendersNOTE: TcxGridDBColumn;
    tblTendersIS_CLOSED: TcxGridDBColumn;
    tblTendersIS_CONFID: TcxGridDBColumn;
    tblTendersPRICE_ACCEPT_HOUR: TcxGridDBColumn;
    tblTendersFORM_FLAG: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    qrShow_Tnd_By_UserINCOME_AMOOUNT: TFloatField;
    tblTendersINCOME_AMOOUNT: TcxGridDBColumn;
    spGet_Income_Amount_By_user: TUniStoredProc;
    qrShow_Offer_By_tnd: TUniQuery;
    dsShow_Offer_By_tnd: TUniDataSource;
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
    qrShow_Offer_By_tndPUBLIC_DATE: TSQLTimeStampField;
    qrShow_Offer_By_tndOFFER_AMOUNT: TFloatField;
    qrShow_Offer_By_tndINCOME_AMOUNT: TFloatField;
    qrShow_Offer_By_tndIDENTITY_NAME: TWideStringField;
    cxGrid1DBTableView2ID_OFFER1: TcxGridDBColumn;
    cxGrid1DBTableView2ID_FOR_LANG1: TcxGridDBColumn;
    cxGrid1DBTableView2ID_LANG1: TcxGridDBColumn;
    cxGrid1DBTableView2ID_PARTNER1: TcxGridDBColumn;
    cxGrid1DBTableView2ID_TND1: TcxGridDBColumn;
    cxGrid1DBTableView2OFFER_NUMBER1: TcxGridDBColumn;
    cxGrid1DBTableView2OFFER_NAME1: TcxGridDBColumn;
    cxGrid1DBTableView2IS_ACTIVE1: TcxGridDBColumn;
    cxGrid1DBTableView2STATUS_FLAG1: TcxGridDBColumn;
    cxGrid1DBTableView2TYPE_FLAG1: TcxGridDBColumn;
    cxGrid1DBTableView2CREATE_DATE1: TcxGridDBColumn;
    cxGrid1DBTableView2PUBLIC_DATE1: TcxGridDBColumn;
    cxGrid1DBTableView2OFFER_AMOUNT1: TcxGridDBColumn;
    cxGrid1DBTableView2INCOME_AMOUNT1: TcxGridDBColumn;
    cxGrid1DBTableView2IDENTITY_NAME1: TcxGridDBColumn;
    qrShow_Offer_By_tndPAY_DATE: TSQLTimeStampField;
    cxGrid1DBTableView2PAY_DATE1: TcxGridDBColumn;
    qrShow_Offer_By_tndEMAIL: TWideStringField;
    cxGrid1DBTableView2EMAIL1: TcxGridDBColumn;
    dxStatusBar1: TdxStatusBar;
    dxStatusBar1Container1: TdxStatusBarContainerControl;
    btnExpand: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblTendersDblClick(Sender: TObject);
    procedure btnExpandClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FExpanded: boolean;
    function Get_Income_Amount_By_user(AID_User: Integer): Double;
  public
    ID_User_data: Integer;
    User_Name: String;
    Is_Offer: integer;

    procedure InitForm;

  end;

var
  frmTenders: TfrmTenders;

implementation

{$R *.dfm}

{ TfrmTenders }

procedure TfrmTenders.tblTendersDblClick(Sender: TObject);
var
  vID_Tender: Integer;
  St: string;
begin
  vID_Tender:= GridValue(tblTenders, 'tblTendersID_TND');

  St:= format(Tender_url, [vID_Tender.ToString]);
  ShellExecute(handle, 'open', PChar(St), '', '', SW_SHOWNORMAL);
end;

procedure TfrmTenders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmTenders.FormCreate(Sender: TObject);
begin
  FExpanded:= false;
end;

function TfrmTenders.Get_Income_Amount_By_user(AID_User: Integer): Double;
begin
  spGet_Income_Amount_By_user.Prepare;
  spGet_Income_Amount_By_user.ParamByName('In_Id_User_data').AsInteger:= AID_User;
  spGet_Income_Amount_By_user.Execute;
  Result:= spGet_Income_Amount_By_user.ParamByName('Out_Sum').AsCurrency;
end;

procedure TfrmTenders.InitForm;
const
  c_Income = 'სუბიექტისაგან შემოსული თანხა სულ: %m';
var
  M: Double;
  S: string;
begin
  M:= Get_Income_Amount_By_user(ID_User_data);
  S:= format(c_Income, [M]);
  lblCaption.Caption:= User_Name + '    ---   ' + S;

  qrShow_Tnd_By_User.Prepare;
  qrShow_Tnd_By_User.ParamByName('In_Id_User_Data').AsInteger:= ID_User_data;
  qrShow_Tnd_By_User.ParamByName('Is_Offer').AsInteger:= Is_Offer;
  qrShow_Tnd_By_User.Open;

  qrShow_Offer_By_tnd.Open;
end;

procedure TfrmTenders.btnExpandClick(Sender: TObject);
begin
  if FExpanded then
    tblTenders.ViewData.Collapse(true)
  else
    tblTenders.ViewData.Expand(true);

  FExpanded:= not FExpanded;
end;

end.
