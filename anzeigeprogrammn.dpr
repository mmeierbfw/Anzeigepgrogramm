program anzeigeprogrammn;

uses
  Vcl.Forms,
  mainform in 'mainform.pas' {Form1},
  udbconnector in '..\dbconnector\udbconnector.pas' {formdb},
  uframefilter in '..\Dokumentverwaltung\uframefilter.pas' {framebasefilter: TFrame},
  doppelstart in '..\Dokumentverwaltung\doppelstart.pas',
  uadresse in '..\Dokumentverwaltung\uadresse.pas' {formpseudo},
  ubfwmaskedit in '..\Dokumentverwaltung\ubfwmaskedit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tformdb, formdb);
  Application.CreateForm(Tformpseudo, formpseudo);
  Application.Run;
end.
