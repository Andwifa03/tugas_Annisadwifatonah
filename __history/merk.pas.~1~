unit UJenisBarang;

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
    Kode: TLabeledEdit;
    Nama: TLabeledEdit;
    Button2: TButton;
    Button3: TButton;
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
    Kode.Text := FieldByName('Kode').AsString;
    Nama.Text := FieldByName('Nama').AsString;
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
      CreateProcCall('sp_tbl_jenis_barang_update');
      ParamByName('fKode').AsString := Kode.Text;
      ParamByName('fNama').AsString := Nama.Text;
      Execute;

      TampilDataExecute(Sender);
    end;

    Kode.Clear;
    Nama.Clear;
    fStsUpdate := False;
  end
  else
  begin
    // Insert Data To Database.
    with dm.UniStoredProc1 do
    begin
      sql.Clear;
      CreateProcCall('tbl_jenis_barang_insert');
      ParamByName('fKode').AsString := Kode.Text;
      ParamByName('fNama').AsString := Nama.Text;
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
    CreateProcCall('sp_tbl_jenis_barang_view');
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
    Kode.Text := FieldByName('Kode').AsString;
    Nama.Text := FieldByName('Nama').AsString;

    Nama.SetFocus;
  end;
end;

end.
