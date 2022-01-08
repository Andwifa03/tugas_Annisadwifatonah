program Tugas_AnnisaDwiFatonah;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FMain},
  UInduk in 'Lib\UInduk.pas' {fInduk},
  UDM in 'Lib\UDM.pas' {DM: TDataModule},
  Ujenisbarang in 'Ujenisbarang.pas' {fJenisBarang},
  Ubarang in 'Ubarang.pas' {fBarang};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
