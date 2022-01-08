unit UInduk;

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
  Vcl.StdCtrls;

type
  TfInduk = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    UniDataSource1: TUniDataSource;
    UniStoredProc1: TUniStoredProc;
    ActionList1: TActionList;
    TampilData: TAction;
    PopupMenu1: TPopupMenu;
    ampilData1: TMenuItem;
    Button1: TButton;
    Insert: TAction;
    Update: TAction;
    Delete: TAction;
    Insert1: TMenuItem;
    Update1: TMenuItem;
    Delete1: TMenuItem;
    procedure TampilDataExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInduk: TfInduk;

implementation

{$R *.dfm}

uses UDM;

procedure TfInduk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TfInduk.TampilDataExecute(Sender: TObject);
begin
  /// / Load Data From Database
end;

end.
