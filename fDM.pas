unit fDM;

interface

uses
  System.SysUtils, System.Classes, DBAccess, UniDacVcl, UniProvider,
  OracleUniProvider, Data.DB, Uni, System.IniFiles;

type
  TDM = class(TDataModule)
    UniConnection1: TUniConnection;
    OracleUniProvider1: TOracleUniProvider;
    UniConnectDialog1: TUniConnectDialog;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConnectToDB;
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses forms, Vcl.Dialogs;

procedure TDM.ConnectToDB;
var
  IniFile: TIniFile;
  vExeName: string;
  vIniFileName: string;
  Section_Name: string;
  vConnection_String: string;
begin
  vExeName:= Application.ExeName;
  vIniFileName:= ChangeFileExt(vExeName, '.ini');
  Section_Name:= 'DB';

  IniFile:= TIniFile.Create(vIniFileName);

  vConnection_String:= IniFile.ReadString(Section_Name, 'Connection_String', 'error');
  IniFile.Free;

  if vConnection_String = 'error' then begin
    ShowMessage('DK: Ini File Error; no connection');
    Application.Terminate;
    exit;
  end;

  UniConnection1.ConnectString:= vConnection_String;
  UniConnection1.Connected:= True;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  ConnectToDB;

  if UniConnection1.Connected = false then begin
    ShowMessage('არ მოხერხდა ბაზასთან შეერთება');
    exit;
  end;
end;

end.
