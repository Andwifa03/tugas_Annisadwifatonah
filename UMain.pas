unit UMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    Jenis_barang: TAction;
    DataMaster: TAction;
    DataMaster1: TMenuItem;
    Jenisbarang1: TMenuItem;
    Transaksi: TAction;
    Laporan: TAction;
    ransaksi1: TMenuItem;
    Laporan1: TMenuItem;
    Barang: TAction;
    Barang1: TMenuItem;
    procedure DataMasterExecute(Sender: TObject);
    procedure TransaksiExecute(Sender: TObject);
    procedure LaporanExecute(Sender: TObject);
    procedure Jenis_barangExecute(Sender: TObject);
    procedure BarangExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses UJenisBarang,
  UBarang;

procedure TFMain.BarangExecute(Sender: TObject);
begin
  // Panggil Form Jenis Barang
  if Application.FindComponent('fBarang') = nil then
  begin
    Application.CreateForm(TfBarang, fBarang);
    fBarang.Show;
  end
  else
    fBarang.BringToFront;
  fBarang.Show;

end;

procedure TFMain.DataMasterExecute(Sender: TObject);
begin
  //
end;

procedure TFMain.Jenis_barangExecute(Sender: TObject);
begin
  // Panggil Form Jenis Barang
  if Application.FindComponent('fJenisBarang') = nil then
  begin
    Application.CreateForm(TfJenisBarang, fJenisBarang);
    fJenisBarang.Show;
  end
  else
    fJenisBarang.BringToFront;
  fJenisBarang.Show;
end;

procedure TFMain.LaporanExecute(Sender: TObject);
begin
  //
end;

procedure TFMain.TransaksiExecute(Sender: TObject);
begin
  //
end;

end.
