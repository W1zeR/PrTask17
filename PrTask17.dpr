program PrTask17;

uses
  Forms,
  UnitT17 in 'UnitT17.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
