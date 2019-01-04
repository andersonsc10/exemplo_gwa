unit UMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynHighlighterJScript, SynEdit, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, ComCtrls, ActnList;

type

  { TFormMain }

  TFormMain = class(TForm)
    ActionClose: TAction;
    ActionConsultar: TAction;
    ActionList1: TActionList;
    Button1: TButton;
    Button2: TButton;
    PageControlPrin: TPageControl;
    PageControlMensagens: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PanelInfo: TPanel;
    StaticText1: TStaticText;
    DescricaoStatico: TStaticText;
    SynEditRetorno: TSynEdit;
    SynEditReq: TSynEdit;
    SynJScriptSyn1: TSynJScriptSyn;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    procedure ActionCloseExecute(Sender: TObject);
    procedure ActionConsultarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  FormMain: TFormMain;

implementation

uses
  fphttpclient;


{$R *.lfm}

{ TFormMain }

procedure TFormMain.ActionConsultarExecute(Sender: TObject);
var
  I: Integer;
begin
  try
    PanelInfo.Left:=81;
    PanelInfo.Top:=160;
    PanelInfo.Visible:=True;
    DescricaoStatico.Caption:='Consultando status de serviço...';
    Application.ProcessMessages;
    Sleep(3000);
    PageControlMensagens.ActivePageIndex:=1;
    SynEditRetorno.Text:='{ "Status": "Serviço em operação" }';
  finally
    PanelInfo.Visible:=False;
  end;
end;

procedure TFormMain.ActionCloseExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  PageControlMensagens.ActivePageIndex:=0;
  PageControlPrin.ActivePageIndex:=0;
  SynEditRetorno.Clear;
  SynEditReq.Clear;
end;



{ TFormMain }


end.

