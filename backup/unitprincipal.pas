unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  DBGrids, DBCtrls, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    dbEditCodigo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dbTextData: TDBText;
    edtPesquisar: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Connexao: TZConnection;
    TbContatos: TZTable;
    procedure edtPesquisarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TbContatosAfterInsert(DataSet: TDataSet);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.edtPesquisarChange(Sender: TObject);
begin
  TbContatos.Locate('nome', edtPesquisar.Text,[loPartialKey]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dbEditCodigo.Enabled := False;
end;

procedure TForm1.TbContatosAfterInsert(DataSet: TDataSet);
begin
     TbContatos.FieldByName('data').Value := Now;
end;

end.

