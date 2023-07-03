unit umatriz;
{
  Unit con el codigo de una matriz de dinamica en pascal

  y con los correspondientes metodos para poder
  realizar los calculos de la factorizacion LU
}
interface

  uses sysutils;

  type
   matriz = class
   private
      M: array of array of real;
      NroF, NroC: word;
   public
      constructor Create(f, c: word);
      property NroFilas: word read NroF write NroF;
      property NroColumnas: word read NroC write NroC;
      function ToString: string; override;
      function get(f, c: word): real; //sacar de la pos(f, c)
      procedure put(f, c: word; e: real);//meter a la pos(f, c)

      //Los siguientes metodos no son parte de la
      //Matriz dinamica
      class function Multiplicar(a, b: matriz): matriz; static;
      class procedure iniciarL(l: matriz); static;
      class procedure iniciarU(u: matriz); static;
      class procedure iniciarLU(l, u: matriz); static;
      class procedure doolittleLU(a, l, u: matriz); static;
      class function resolverSistema(l, u, b: matriz): matriz; static;
end;

implementation


constructor matriz.Create(f, c: Word);
var i, j: word;
begin
  setLength(M, f, c);
  for i := 0 to f-1 do begin
    for j := 0 to c-1 do begin
      self.M[i, j] := 0;
    end;
  end;
  NroF := f;
  NroC := c;
end;

//multiplica a con b y lo retorna en r
class function matriz.Multiplicar(a, b: matriz): matriz;
var
  r: matriz;
  i, j, k: word;
  aux: real;
begin
  if a.NroColumnas <> b.NroFilas then exit(nil);
  r := matriz.Create(a.NroFilas, b.NroColumnas);
  for i := 0 to r.NroFilas-1 do begin
    for j := 0 to r.NroColumnas-1 do begin
      aux := 0;
      for k := 0 to a.NroColumnas-1 do begin
        aux := aux + a.M[i, k]*b.M[k, j];
      end;
      r.M[i, j] := aux;
    end;
  end;
  exit(r);
end;


function matriz.ToString;
var
  s: string;
  i, j: word;
begin
  inherited;
  for i := 0 to NroF-1 do begin
    for j := 0 to NroC-1 do begin
      s := s + FloatToStr(self.M[i, j]);
      if j+1 <= NroC-1 then s := s + ', ';
    end;
    s := s + #10;
  end;
  exit(s);
end;

function matriz.get(f, c: word): real;
begin
  exit(M[f-1, c-1]);
end;

procedure matriz.put(f, c: word; e: real);
begin
  M[f-1, c-1] := e;
end;

// setea el parametro como matriz l
class procedure matriz.iniciarL(l: matriz);
var i, j: word;
begin
   for i := 1 to l.NroF do begin
    l.put(i, i, 1);
    for j := i+1 to l.NroC do begin
      l.put(i, j, 0);
    end;
   end;
end;

// setea el parametro como matriz u
class procedure matriz.iniciarU(u: matriz);
var i, j: word;
begin
   for i := 1 to u.NroF do begin
    for j := i+1 to u.NroC do begin
      u.put(j, i, 0);
    end;
   end;
end;

//las 2 funciones de arriba fusionadas en una
class procedure matriz.iniciarLU(l, u: matriz);
var i, j: word;
begin
   for i := 1 to u.NroF do begin
    l.put(i, i, 1);
    for j := i+1 to u.NroC do begin
      l.put(i, j, 0);
      u.put(j, i, 0);
    end;
   end;
end;


class procedure matriz.doolittleLU(a, l, u: matriz);
var
  i, j, k, n, p: word;
  suma1, suma2, suma3: real;
begin
  n := a.NroFilas;
	for k := 1 to n do begin
		suma1 := 0;
		for p := 1 to k-1 do begin
			suma1 := suma1 + l.get(k,p) * u.get(p,k);
		end;
		u.put(k,k, a.get(k,k) - suma1);
		for i := k+1 to n do begin
			suma2 := 0;
			for p:=1 to (k-1) do begin
				suma2 := suma2 + l.get(i,p) * u.get(p,k);
			end;
			l.put(i,k, (a.get(i,k)-suma2)/u.get(k,k));
		end;
		for j := k+1 to n do begin
			suma3 := 0;
			for p:=1 to k-1 do begin
				suma3 :=suma3 + l.get(k,p) * u.get(p,j);
			end;
			u.put(k,j, (a.get(k,j)-suma3)/l.get(k,k));
		end;
	end;
end;


class function matriz.resolverSistema(l, u, b: matriz): matriz;
var
  c, x: matriz;
  i, j: word;
  aux: real;
begin
  c := matriz.Create(b.NroFilas, b.NroColumnas);
  for i := 1 to c.NroFilas do begin
    aux := 0;
    for j := 1 to l.NroColumnas do begin
      aux := aux + c.get(j, 1) * l.get(i, j);
    end;
    c.put(i, 1, b.get(i, 1) - aux);
  end;

  x := matriz.Create(b.NroFilas, b.NroColumnas);
  for i := x.NroFilas downto 1 do begin
    aux := 0;
    for j := u.NroColumnas downto 1 do begin
      if i <> j then begin
        aux := aux + x.get(j, 1) * u.get(i, j);
      end;
    end;
    aux := c.get(i, 1) - aux;
    x.put(i, 1, aux / u.get(i, i));
  end;
  exit(x);
end;


end.
