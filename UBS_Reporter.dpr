program UBS_Reporter;

uses
  Vcl.Forms,
  fmain in 'fmain.pas' {frmMain},
  fUsers in 'fUsers.pas' {frmUsers},
  fDM in 'fDM.pas' {DM: TDataModule},
  fTenders in 'fTenders.pas' {frmTenders},
  uInit_cx_Strings in '..\Common\uInit_cx_Strings.pas',
  uGridValue in 'uGridValue.pas',
  fSale_User in 'fSale_User.pas' {frmSale_User},
  uCommon in '..\Moderator\uCommon.pas',
  fStatistic in 'fStatistic.pas' {frmStatistic},
  fAll_Tenders in 'fAll_Tenders.pas' {frmAll_Tenders},
  fPays in 'fPays.pas' {frmPays},
  fUsers_By_Category in 'fUsers_By_Category.pas' {frmUsers_By_Category};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
