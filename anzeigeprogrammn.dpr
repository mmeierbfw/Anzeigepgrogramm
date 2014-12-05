program anzeigeprogrammn;

uses
  Vcl.Forms,
  uanzeigemain in 'uanzeigemain.pas' {formmain},
  udbconnector in '..\dbconnector\udbconnector.pas' {formdb},
  uframefilter in '..\Dokumentverwaltung\uframefilter.pas' {framebasefilter: TFrame},
  doppelstart in '..\Dokumentverwaltung\doppelstart.pas',
  uadresse in '..\Dokumentverwaltung\uadresse.pas' {formpseudo},
  ubfwmaskedit in '..\Dokumentverwaltung\ubfwmaskedit.pas',
  uconstants in 'uconstants.pas',
  uworker in 'uworker.pas',
  uframebase in '..\Dokumentverwaltung\uframebase.pas' {framebase: TFrame},
  uframebasemitnutzer in '..\Dokumentverwaltung\uframebasemitnutzer.pas' {framebasenutzer: TFrame},
  uframeenergie in '..\Dokumentverwaltung\uframeenergie.pas' {frameenergie: TFrame},
  uframereklmont in '..\Dokumentverwaltung\uframereklmont.pas' {framereklmont: TFrame},
  uframevertrag in '..\Dokumentverwaltung\uframevertrag.pas' {framebasenutzer1: TFrame},
  uframezwischen in '..\Dokumentverwaltung\uframezwischen.pas' {framezwischen: TFrame},
  uftpconnector in '..\neueftpverbindung\uftpconnector.pas' {formftp},
  uframeauftrag in '..\sources\uframeauftrag.pas' {frameauftrag: TFrame},
  uflippanels in 'uflippanels.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tformmain, formmain);
  Application.CreateForm(Tformdb, formdb);
  Application.CreateForm(Tformpseudo, formpseudo);
  Application.CreateForm(Tformftp, formftp);
  Application.Run;

end.
