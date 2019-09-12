unit unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form3: TForm3;

implementation
//Связка форм
uses unit1;
{$R *.lfm}

{ TForm2 }

//Добавление датчика
procedure TForm3.Button1Click(Sender: TObject);
begin
if ((length(Edit1.Text)>StringMax))or((length(Edit2.Text)>StringMax))or((length(Edit3.Text)>StringMax))or((length(Edit4.Text)>StringMax)) then
  begin
       showmessage('Вы превысили максимальное количество символов в строке('+inttostr(StringMax)+')');
       exit;
       end;
  Sensors[SensorsQ+1].SensorNumber:=SensorsQ+1;
  Sensors[SensorsQ+1].Name:=Edit1.Text;
  Sensors[SensorsQ+1].MeasureUnit:=Edit2.Text;
  Sensors[SensorsQ+1].StateRequest:=Edit3.Text;
  Sensors[SensorsQ+1].DataPlace:=strtoint(Edit4.Text);
  Sensors[SensorsQ+1].RequestFreq:=strtoint(Edit5.Text)*1000;
  inc(SensorsQ);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  form3.close;
  refreshsensorlist;
  refreshsensorstatelist;
end;


end.

