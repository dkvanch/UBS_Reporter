unit fmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, uInit_cx_Strings, fStatistic,
  dxBarApplicationMenu, Vcl.StdActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxRibbonGallery,
  dxSkinChooserGallery, Vcl.StdCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    rtUsers: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    btnUser: TdxBarLargeButton;
    btnCategory_by_User: TdxBarLargeButton;
    rtTenders: TdxRibbonTab;
    rtOffers: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    btnTenders: TdxBarLargeButton;
    btnPays: TdxBarLargeButton;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    ActionManager1: TActionManager;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    bmbHead_Buttons: TdxBar;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxImageList1: TcxImageList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    dxBarLargeButton3: TdxBarLargeButton;
    btnUsers_by_category: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure btnUserClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnCategory_by_UserClick(Sender: TObject);
    procedure btnTendersClick(Sender: TObject);
    procedure btnPaysClick(Sender: TObject);
    procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject; const ASkinName: string);
    procedure btnUsers_by_categoryClick(Sender: TObject);
  private
    function ShowForm(AForm: TFormClass; AInit: Boolean = false; AShow: Boolean = false): TForm;
    procedure ReadSkinNameFromRegistry(var ASkinName: string);
    procedure WriteSkinNameToRegistry(ASkinName: string);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses System.rtti, System.Win.Registry, dxCore, cxGridStrs,
  fUsers, fSale_User, fAll_Tenders, fPays, fUsers_By_Category;

{ TForm1 }

procedure TfrmMain.btnPaysClick(Sender: TObject);
begin
  ShowForm(TfrmPays, true);
end;

procedure TfrmMain.btnCategory_by_UserClick(Sender: TObject);
begin
  ShowForm(TfrmStatistic, true);
end;

procedure TfrmMain.btnTendersClick(Sender: TObject);
begin
  ShowForm(TfrmAll_Tenders, true);
end;

procedure TfrmMain.btnUserClick(Sender: TObject);
begin
  ShowForm(TfrmUsers, true);
end;

procedure TfrmMain.btnUsers_by_categoryClick(Sender: TObject);
begin
  ShowForm(TfrmUsers_By_Category, true);
end;

procedure TfrmMain.dxBarLargeButton1Click(Sender: TObject);
begin
  ShowForm(TfrmSale_User, true);
end;

procedure TfrmMain.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject; const ASkinName: string);
begin
  dxSkinController1.SkinName:= ASkinName;
  dxRibbon1.ColorSchemeName:= ASkinName;
  WriteSkinNameToRegistry(ASkinName);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  ASkinName: string;
begin
  DisableAero:= true;
  Init_cx_Strings_Geo;
  cxSetResourceString(@scxGridGroupByBoxCaption, 'დაჯგუფება');

  ReadSkinNameFromRegistry(ASkinName);
  dxSkinController1.SkinName:= ASkinName;
  dxRibbon1.ColorSchemeName:= ASkinName;

  dxRibbon1.Tabs[0].Active:= true;
end;

procedure TfrmMain.WriteSkinNameToRegistry(ASkinName: string);
var
  RegNGFS: TRegistry;
begin
  RegNGFS:= TRegistry.Create;
  try
    RegNGFS.RootKey:= HKEY_CURRENT_USER;
    if RegNGFS.OpenKey('SOFTWARE\UBS_Moderator', true) then
    begin
      RegNGFS.WriteString('SkinName', ASkinName);
    end;
  finally
    RegNGFS.Free;
  end;
end;

procedure TfrmMain.ReadSkinNameFromRegistry(var ASkinName: string);
var
  RegNGFS: TRegistry;
begin
  RegNGFS:= TRegistry.Create;
  try
    RegNGFS.RootKey:= HKEY_CURRENT_USER;
    if RegNGFS.OpenKey('SOFTWARE\UBS_Moderator', true) then
    begin
      ASkinName:= RegNGFS.ReadString('SkinName');
    end;
  finally
    RegNGFS.Free;
  end;
end;

function TfrmMain.ShowForm(AForm: TFormClass; AInit: Boolean = false; AShow: Boolean = false): TForm;
var
  I: Integer;
  vForm: TForm;
  vF: TForm;
  RttiContext: TRttiContext;
  Meth: TRttiMethod;
  Info: TRttiInstanceType;
begin
  vForm:= nil;
  result:= nil;
  for I:= 0 to MDIChildCount - 1 do
  begin
    vF:= MDIChildren[I];
    if vF.ClassType = AForm then
    begin
      vForm:= vF;
      break;
    end;
  end;

  if vForm <> nil then
  begin
    result:= vForm;
    vForm.Show;
    exit;
  end;

  vForm:= AForm.Create(self);

  if AInit then
  begin
    RttiContext:= TRttiContext.Create;
    try
      Info:= (RttiContext.GetType(vForm.ClassType) as TRttiInstanceType);
      Meth:= Info.GetMethod('InitForm');
      if Meth = nil then
        ShowMessage('Method "InitForm" not found')
      else
        Meth.Invoke(vForm, []);
    finally
      RttiContext.Free;
    end;
  end;

  result:= vForm;

  if AShow then
    vForm.Show;
end;

end.
