unit interfaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, umatriz;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    MatrizA: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    DimF: TComboBox;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    Label7: TLabel;
    MatrizL: TStringGrid;
    MatrizU: TStringGrid;
    Label8: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    MatrizB: TStringGrid;
    MatrizX: TStringGrid;
    Label12: TLabel;
    Label13: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure DimFChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    a: matriz;
    modeS: boolean;
    procedure setVisible(x: boolean);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j: word;
  y: real;
  l, u, b, x: matriz;
begin
  a := matriz.Create(MatrizA.RowCount, MatrizA.ColCount);
  for i := 1 to a.NroFilas do begin
    for j := 1 to a.NroColumnas do begin
      if MatrizA.Cells[j-1, i-1] = '' then exit;
      y := StrToFloat(MatrizA.Cells[j-1, i-1]);
      a.put(i, j, y);
    end;
  end;
  l := matriz.Create(a.NroFilas, a.NroColumnas);
  u := matriz.Create(a.NroFilas, a.NroColumnas);
  matriz.iniciarLU(l, u);
  MatrizL.ColCount := a.NroFilas;
  MatrizL.RowCount := a.NroFilas;
  MatrizU.ColCount := a.NroFilas;
  MatrizU.RowCount := a.NroFilas;
  matriz.doolittleLU(a, l, u);
  for i := 1 to a.NroFilas do begin
    for j := 1 to a.NroColumnas do begin
      MatrizL.Cells[j-1, i-1] := FloatToStr(l.get(i, j));
      MatrizU.Cells[j-1, i-1] := FloatToStr(u.get(i, j));
    end;
  end;
  if modeS then begin
    b := matriz.Create(a.NroFilas, 1);
    for i := 1 to b.NroFilas do begin
      for j := 1 to b.NroColumnas do begin
        if MatrizB.Cells[j-1, i-1] = '' then exit;
        y := StrToFloat(MatrizB.Cells[j-1, i-1]);
        b.put(i, j, y);
      end;
    end;
    x := matriz.resolverSistema(l, u, b);
    MatrizX.RowCount := x.NroFilas;
    for i := 1 to x.NroFilas do begin
      for j := 1 to x.NroColumnas do begin
        MatrizX.Cells[j-1, i-1] := FloatToStr(x.get(i, j));
      end;
    end;
  end;
  setVisible(true);
end;

procedure TForm1.setVisible(x: boolean);
begin
  Label6.Visible := x;
  Label7.Visible := x;
  MatrizL.Visible := x;
  MatrizU.Visible := x;
  Shape1.Visible := x;
  if modeS then begin
    label12.Visible := x;
    matrizX.Visible := x;
    label8.Visible := x;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(a.ToString);
end;

function ValidarCadena(cad: string): boolean;
var i: word;
  x: boolean;
begin
  x := true;
  i := 1;
  while (x) and (i <= length(cad)) do begin
    if (ord(cad[i]) > $39) or (ord(cad[i]) < $30) then x := false;
    i := i+1;
  end;
  exit( (x) and (length(cad) > 0));
end;
procedure TForm1.DimFChange(Sender: TObject);
begin
  if validarCadena(DimF.Text) then begin
    MatrizA.RowCount := StrToInt(DimF.Text);
    MatrizA.ColCount := StrToInt(DimF.Text);
    MatrizB.RowCount := StrToInt(DimF.Text);
  end;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
  Panel1.Color := clPurple;
  Panel2.Color := clFuchsia;
  modeS := false;
  label9.Visible := true;
  label3.Visible := true;
  DimF.Visible := true;
  label1.Visible := true;
  label2.Visible := true;
  MatrizA.Visible := true;
  label4.Visible := true;
  label5.Visible := true;
  Button1.Visible := true;
  //Stockeando
  setVisible(false);
  label10.Visible := false;
  label11.Visible := false;
  MatrizB.Visible := false;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
  Panel2.Color := clPurple;
  Panel1.Color := clFuchsia;
  modeS := true;
  label9.Visible := true;
  label3.Visible := true;
  DimF.Visible := true;
  label1.Visible := true;
  label2.Visible := true;
  MatrizA.Visible := true;
  label4.Visible := true;
  label5.Visible := true;
  Button1.Visible := true;
   //stockeando
  setVisible(false);
  label10.Visible := true;
  label11.Visible := true;
  MatrizB.Visible := true;
end;

end.
