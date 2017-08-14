unit fUsers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBAccess, Uni, MemDS, Vcl.ExtCtrls, cxContainer, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSplitter,
  fTenders, Vcl.StdCtrls, dxScreenTip, dxCustomHint, cxHint, uCommon, Vcl.Menus,
  cxButtons;

type
  TfrmUsers = class(TForm)
    grdUsers: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxStatusBar1: TdxStatusBar;
    qrShow_Registered_Users: TUniQuery;
    dsShow_Registered_Users: TUniDataSource;
    qrShow_Registered_UsersID_USER_DATA: TFloatField;
    qrShow_Registered_UsersID_USER_DATA_PARENT: TFloatField;
    qrShow_Registered_UsersID_JURIDICAL_STATUS: TFloatField;
    qrShow_Registered_UsersJURIDICAL_STATUS: TWideStringField;
    qrShow_Registered_UsersIDENTITY_CODE: TWideStringField;
    qrShow_Registered_UsersIDENTITY_NAME: TWideStringField;
    qrShow_Registered_UsersIDENTITY_LNAME: TWideStringField;
    qrShow_Registered_UsersIDENTITY_FNAME: TWideStringField;
    qrShow_Registered_UsersIDENTITY_CARDNUMBER: TWideStringField;
    qrShow_Registered_UsersREPRESENTATIVE_LNAME: TWideStringField;
    qrShow_Registered_UsersREPRESENTATIVE_FNAME: TWideStringField;
    qrShow_Registered_UsersREPRESENTATIVE_PERSONALID: TWideStringField;
    qrShow_Registered_UsersREPRESENTATIVE_CARDNUMBER: TWideStringField;
    qrShow_Registered_UsersEMAIL: TWideStringField;
    qrShow_Registered_UsersIS_ACTIVE: TFloatField;
    grdUsersID_USER_DATA: TcxGridDBColumn;
    grdUsersID_USER_DATA_PARENT: TcxGridDBColumn;
    grdUsersID_JURIDICAL_STATUS: TcxGridDBColumn;
    grdUsersJURIDICAL_STATUS: TcxGridDBColumn;
    grdUsersIDENTITY_CODE: TcxGridDBColumn;
    grdUsersIDENTITY_NAME: TcxGridDBColumn;
    grdUsersIDENTITY_LNAME: TcxGridDBColumn;
    grdUsersIDENTITY_FNAME: TcxGridDBColumn;
    grdUsersIDENTITY_CARDNUMBER: TcxGridDBColumn;
    grdUsersREPRESENTATIVE_LNAME: TcxGridDBColumn;
    grdUsersREPRESENTATIVE_FNAME: TcxGridDBColumn;
    grdUsersREPRESENTATIVE_PERSONALID: TcxGridDBColumn;
    grdUsersREPRESENTATIVE_CARDNUMBER: TcxGridDBColumn;
    grdUsersEMAIL: TcxGridDBColumn;
    grdUsersIS_ACTIVE: TcxGridDBColumn;
    grdUsersREG_DATE: TcxGridDBColumn;
    qrShow_Registered_UsersACTIVE_TXT: TWideStringField;
    grdUsersACTIVE_TXT: TcxGridDBColumn;
    Panel1: TPanel;
    qrShow_Registered_UsersREG_DATE: TDateTimeField;
    deFirst: TcxDateEdit;
    deLast: TcxDateEdit;
    qrShow_Registered_UsersPARENT_NAME: TWideStringField;
    grdUsersPARENT_NAME: TcxGridDBColumn;
    qrShow_Registered_UsersTND_COUNT: TFloatField;
    qrShow_Registered_UsersOFFER_COUNT: TFloatField;
    grdUsersTND_COUNT: TcxGridDBColumn;
    grdUsersOFFER_COUNT: TcxGridDBColumn;
    Panel2: TPanel;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxSplitter2: TcxSplitter;
    qrShow_Tnd_By_User: TUniQuery;
    qrShow_Offer_By_User: TUniQuery;
    dsShow_Tnd_By_User: TUniDataSource;
    dsShow_Offer_By_User: TUniDataSource;
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
    qrShow_Offer_By_UserID_OFFER: TFloatField;
    qrShow_Offer_By_UserID_FOR_LANG: TFloatField;
    qrShow_Offer_By_UserID_LANG: TFloatField;
    qrShow_Offer_By_UserID_PARTNER: TFloatField;
    qrShow_Offer_By_UserID_TND: TFloatField;
    qrShow_Offer_By_UserOFFER_NUMBER: TWideStringField;
    qrShow_Offer_By_UserOFFER_NAME: TWideStringField;
    qrShow_Offer_By_UserIS_ACTIVE: TFloatField;
    qrShow_Offer_By_UserSTATUS_FLAG: TFloatField;
    qrShow_Offer_By_UserTYPE_FLAG: TFloatField;
    qrShow_Offer_By_UserCREATE_DATE: TSQLTimeStampField;
    qrShow_Offer_By_UserPUBLIC_DATE: TSQLTimeStampField;
    qrShow_Offer_By_UserOFFER_AMOUNT: TFloatField;
    cxGrid2DBTableView1TND_NUMBER: TcxGridDBColumn;
    cxGrid2DBTableView1CREATE_TIME: TcxGridDBColumn;
    cxGrid2DBTableView1ACTIVATE_TIME: TcxGridDBColumn;
    cxGrid2DBTableView1NOTE: TcxGridDBColumn;
    cxGrid3DBTableView1OFFER_NUMBER: TcxGridDBColumn;
    cxGrid3DBTableView1CREATE_DATE: TcxGridDBColumn;
    cxGrid3DBTableView1PUBLIC_DATE: TcxGridDBColumn;
    cxGrid3DBTableView1OFFER_AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1TND_AMOUNT: TcxGridDBColumn;
    Timer1: TTimer;
    qrShow_Registered_UsersCURR_OFFERS_IN_TND_COUNT: TFloatField;
    qrShow_Registered_UsersSEVED_OFFERS_IN_TND_COUNT: TFloatField;
    grdUsersCURR_OFFERS_IN_TND_COUNT: TcxGridDBColumn;
    grdUsersSEVED_OFFERS_IN_TND_COUNT: TcxGridDBColumn;
    lblSum: TLabel;
    spGet_Income_Amount: TUniStoredProc;
    cxHintStyleController1: TcxHintStyleController;
    dsShow_Offer_By_User1: TUniDataSource;
    qrShow_Offer_By_User1: TUniQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    FloatField9: TFloatField;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tblPhones: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    qrShow_Phones_By_User: TUniQuery;
    dsShow_Phones_By_User: TUniDataSource;
    qrShow_Phones_By_UserCONTACT: TWideStringField;
    tblPhonesCONTACT: TcxGridDBColumn;
    cxSplitter3: TcxSplitter;
    btnFind: TcxButton;
    edtPhone: TcxTextEdit;
    edtMail: TcxTextEdit;
    spGet_User_By_Contact: TUniStoredProc;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure grdUsersDblClick(Sender: TObject);
    procedure deFirstPropertiesEditValueChanged(Sender: TObject);
    procedure cxHintStyleController1ShowHint(Sender: TObject; var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure edtPhonePropertiesChange(Sender: TObject);
    procedure edtMailPropertiesChange(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
  private
    procedure Get_Income_Amount;
    function Get_User_By_Contact: Integer;
    { Private declarations }
  public
    procedure InitForm;
  end;

var
  frmUsers: TfrmUsers;

implementation

{$R *.dfm}

uses fDM, uGridValue, Winapi.ShellAPI;

{ TfrmUsers }

procedure TfrmUsers.grdUsersDblClick(Sender: TObject);
var
  form: TfrmTenders;
  V: Variant;
  co: Integer;
  Is_Offer: Integer;
begin
  GetCurrentGrid_Value(grdUsers, grdUsersTND_COUNT, V);
  co:= V;
  Is_Offer:= co;

  GetCurrentGrid_Value(grdUsers, grdUsersOFFER_COUNT, V);
  co:= co + V;
  GetCurrentGrid_Value(grdUsers, grdUsersCURR_OFFERS_IN_TND_COUNT, V);
  co:= co + V;
  GetCurrentGrid_Value(grdUsers, grdUsersSEVED_OFFERS_IN_TND_COUNT, V);
  co:= co + V;

  if co = 0 then
    exit;

  form:= TfrmTenders.create(self.owner);
  GetCurrentGrid_Value(grdUsers, grdUsersID_USER_DATA, V);
  form.ID_User_data:= V;
  form.Is_Offer:= Is_Offer;

  GetCurrentGrid_Value(grdUsers, grdUsersIDENTITY_NAME, V);
  form.User_Name:= V;

  form.InitForm;
  form.Show;
end;

procedure TfrmUsers.btnFindClick(Sender: TObject);
var
  ID: Integer;
begin
  if qrShow_Registered_Users.Filtered then begin
    btnFind.Caption:= 'ფილტრი';
    qrShow_Registered_Users.Filtered:= false;
  end
  else begin
    ID:= Get_User_By_Contact;
    qrShow_Registered_Users.Filter:= 'ID_USER_DATA = ' + ID.ToString;
    qrShow_Registered_Users.Filtered:= true;
    btnFind.Caption:= 'ფილტრის მოხსნა';
  end;
end;

function TfrmUsers.Get_User_By_Contact: Integer;
var
  vType: Integer;
  S: String;
begin
  vType:= 1;
  S:= edtPhone.Text;
  if S = '' then begin
    vType:= 6;
    S:= edtMail.Text;
  end;

  spGet_User_By_Contact.Prepare;
  spGet_User_By_Contact.ParamByName('In_Contact_Type').AsInteger:= vType;
  spGet_User_By_Contact.ParamByName('In_Contact').AsString:= S;
  spGet_User_By_Contact.Execute;
  Result:= spGet_User_By_Contact.ParamByName('In_Id_User_Data').AsInteger;
end;

procedure TfrmUsers.cxHintStyleController1ShowHint(Sender: TObject; var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
begin
  HintInfo.HintMaxWidth:= 500;
end;

procedure TfrmUsers.deFirstPropertiesEditValueChanged(Sender: TObject);
begin
  Get_Income_Amount;
end;

procedure TfrmUsers.edtMailPropertiesChange(Sender: TObject);
begin
  edtPhone.Text:= '';
end;

procedure TfrmUsers.edtPhonePropertiesChange(Sender: TObject);
begin
  edtMail.Text:= '';
end;

procedure TfrmUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmUsers.FormCreate(Sender: TObject);
begin
  Timer1.Interval:= 1000 * 60 * 5;
  Timer1.Enabled:= true;

  Get_Income_Amount;
end;

procedure TfrmUsers.Get_Income_Amount;
var
  Curr: Double;
  D: Variant;
begin
  spGet_Income_Amount.Prepare;

  D:= deLast.EditValue;
  if not VarIsNull(D) then
    spGet_Income_Amount.ParamByName('in_last_date').AsDate:= D;

  D:= deFirst.EditValue;
  if not VarIsNull(D) then
    spGet_Income_Amount.ParamByName('in_first_date').AsDate:= D;

  spGet_Income_Amount.Execute;
  Curr:= spGet_Income_Amount.ParamByName('out_sum').AsCurrency;
  lblSum.Caption:= CurrToStr(Curr);
end;

procedure TfrmUsers.InitForm;
begin
  qrShow_Registered_Users.Open;

  qrShow_Tnd_By_User.ParamByName('Is_Offer').AsInteger:= 1;
  qrShow_Tnd_By_User.Open;

  qrShow_Offer_By_User.ParamByName('in_status').AsInteger:= 3;
  qrShow_Offer_By_User.Open;

  qrShow_Offer_By_User1.ParamByName('in_status').AsInteger:= 1;
  qrShow_Offer_By_User1.Open;

  qrShow_Phones_By_User.Open;
end;

procedure TfrmUsers.Timer1Timer(Sender: TObject);
const
  st = 'ბოლო განახლება: %s';
begin
  qrShow_Registered_Users.Refresh;
  dxStatusBar1.Panels[0].Text:= format(st, [FormatDateTime('c', now)]);
end;

end.
