unit AllBuyers;
  {Shows all buyers.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TBuyers = class(TForm)
    AgencyconnectionConnection: TFDConnection;
    BuyerTable: TFDQuery;
    BuyerData: TDataSource;
    DBGrid1: TDBGrid;
    Exit: TButton;
    Refresh: TButton;
    procedure ExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Buyers: TBuyers;

implementation

{$R *.dfm}

{Closes the form.}
procedure TBuyers.ExitClick(Sender: TObject);
begin
  Buyers.Close;
end;

{Refresh dataset on creation of form.}
procedure TBuyers.FormCreate(Sender: TObject);
begin
  BuyerData.DataSet.Refresh;
end;

{Refresh button for dataset.}
procedure TBuyers.RefreshClick(Sender: TObject);
begin
  BuyerData.DataSet.Refresh;
end;
end.
