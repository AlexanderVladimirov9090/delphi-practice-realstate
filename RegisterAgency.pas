unit RegisterAgency;
{This is the registration form logic for Agency.}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  {This is the database unit used for the query}
  dmAgency;

type
  TRegAgency = class(TForm)
   {This are simple text edit boxes, where the user`s inputed data are stored, before quering to database}
    AgencyName: TEdit;
    AgencyAddress: TEdit;
    AgencyPhone: TEdit;
    {This is used as a static text to indicate the user what has to input}
    Name: TStaticText;
    Address: TStaticText;
    Phone: TStaticText;
    {Button that has an event, that will register the data.}
    RegisterButton: TButton;
    {This is the procedure that is an event.}
    procedure RegisterButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegAgency: TRegAgency;

implementation

{$R *.dfm}
{Executes Query to insert record!}
procedure TRegAgency.RegisterButtonClick(Sender: TObject);
begin
  {Checks if empty string is pushed to the database}
  if (AgencyName.Text<>'') and (AgencyPhone.Text <>'') and (AgencyAddress.Text<>'') then
  begin
    {From the dmAgency I`m Using qrAgency (Object that is used to query the database.)}
  with dmAgency.Form3.qrAgency do
    begin
      {This is where the magic is happening.}
      dmAgency.Form3.qrAgency.Close;
      dmAgency.Form3.qrAgency.SQL.Clear;
      dmAgency.Form3.qrAgency.SQL.Add('INSERT INTO AGENCY (AGENCY_NAME, AGENCY_ADDRESS, AGENCY_PHONE )');
      dmAgency.Form3.qrAgency.SQL.Add('VALUES ('''+AgencyName.Text+''',');
      dmAgency.Form3.qrAgency.SQL.Add(' '''+AgencyAddress.Text+''',');
      dmAgency.Form3.qrAgency.SQL.Add(' '''+AgencyPhone.Text+''')');
      dmAgency.Form3.qrAgency.ExecSQL;
      {After inserting query executes the form will be closed.}
      RegAgency.Close;
    end;
  end
  else
  begin
        ShowMessage('No Empty Values!');
  end;
end;
end.
