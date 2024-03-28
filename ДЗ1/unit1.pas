unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Bitbtn1click(Sender: TObject);
var i,t,k,k1,k2:integer;
y:array[1..20] of integer;
begin
Memo1.Lines.clear();
k:=strtoint(Edit1.Text); // начало
k1:=strtoint(Edit2.Text); // конец
k2:=strtoint(Edit3.Text); // длина шага
t:=(k1-k) div k2;
for i:=1 to t+1 do
    begin
    y[i]:=k*k;
    Memo1.Lines.add('По формуле y=x^2 ответ на шаге '+inttostr(k)+' будет:'+inttostr(y[i]));
    k:=k+k2;
    end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

end.

