program proyectodoolittle;

uses
  Vcl.Forms,
  interfaz in 'interfaz.pas' {Form1},
  umatriz in 'umatriz.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
