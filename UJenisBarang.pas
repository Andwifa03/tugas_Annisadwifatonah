unit Ujenisbarang;

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
  UInduk,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  Vcl.StdCtrls,
  Vcl.Mask;

type
  TfJenisBarang = class(TfInduk)
    Nama_barang: TLabeledEdit;
    Kode_barang: TLabeledEdit;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Nama_Merk: TLabeledEdit;
    id: TLabeledEdit;
    procedure TampilDataExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
  private
    { Private declarations }
    fStsUpdate: Boolean;
  public
    { Public declarations }
  end;

var
  fJenisBarang: TfJenisBarang;

implementation

{$R *.dfm}

uses UDM;

procedure TfJenisBarang.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  { Flag Insert or Update }
  fStsUpdate := True;
  with UniStoredProc1 do
  begin
    id.Text := FieldByName('id').AsString;
    nama_barang.Text := FieldByName('nama_barang').AsString;
    kode_barang.Text := FieldByName('kode_barang').AsString;
    nama_merk.Text := FieldByName('nama_merk').AsString;
  end;
end;

procedure TfJenisBarang.DeleteExecute(Sender: TObject);
begin
  inherited;
  /// Delete Data
  with UniStoredProc1 do
  begin

    case MessageDlg('Apakah Anda Yakin Ingin Menghapus? ', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) of
      mrYes:
        Delete;
      mrNo:
        ;
    end;

  end;
end;

procedure TfJenisBarang.InsertExecute(Sender: TObject);
begin
  inherited;

  if fStsUpdate = True then
  begin
    // Update Data
    with dm.UniStoredProc1 do
    begin
      sql.Clear;
      CreateProcCall('tugass1_update');
      ParamByName('parameter_id').AsString := id.Text;
      ParamByName('parameter_nama_barang').AsString := nama_barang.Text;
      ParamByName('parameter_kode_barang').AsString := kode_barang.Text;
      ParamByName('parameter_nama_merk').AsString := nama_merk.Text;
      Execute;

      TampilDataExecute(Sender);
    end;

    nama_barang.Clear;
    kode_barang.Clear;
    nama_merk.Clear;
    fStsUpdate := False;
  end
  else
  begin
    // Insert Data To Database.
    with dm.UniStoredProc1 do
    begin
      sql.Clear;
      CreateProcCall('insert_tugass1');
      ParamByName('parameter_nama_barang').AsString := nama_barang.Text;
      ParamByName('parameter_kode_barang').AsString := kode_barang.Text;
      ParamByName('parameter_nama_merk').AsString := nama_merk.Text;
      Execute;
      { message }
      MessageDlg('Data Berhasil disimpan', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes], 0);
      { Refresh }
      TampilDataExecute(Sender);
    end;
  end;
end;

procedure TfJenisBarang.TampilDataExecute(Sender: TObject);
begin
  inherited;
  with UniStoredProc1 do
  begin
    sql.Clear;
    CreateProcCall('tugass1_view');
    ExecProc;
  end;
  { FitGrid }
  dm.FitGrid(DBGrid1);

end;

procedure TfJenisBarang.UpdateExecute(Sender: TObject);
begin
  inherited;
  { Flag Insert or Update }
  fStsUpdate := True;
  with UniStoredProc1 do
  begin
    id.Text := FieldByName('id').AsString;
    nama_barang.Text := FieldByName('nama_barang').AsString;
    kode_barang.Text := FieldByName('kode_barang').AsString;
    nama_merk.Text := FieldByName('nama_merk').AsString;

    Nama_barang.SetFocus;
  end;
end;

end.
