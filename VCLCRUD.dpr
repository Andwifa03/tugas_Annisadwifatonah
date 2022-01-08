program VCLCRUD;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FMain},
  UInduk in 'Lib\UInduk.pas' {fInduk},
  UDM in 'Lib\UDM.pas' {DM: TDataModule},
  UJenisBarang in 'UJenisBarang.pas' {fJenisBarang},
  UBarang in 'UBarang.pas' {fBarang};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
