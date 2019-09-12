unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    TLabel1: TLabel;
    TLabel2: TLabel;
    TLabel3: TLabel;
    SaveDevice: TButton;
    DeviceName: TLabel;
    TLabel4: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
//Связка форм
uses unit1;
{$R *.lfm}

{ TForm2 }

//Добавление устройства
procedure TForm2.Button1Click(Sender: TObject);
begin
if ((length(Edit1.Text)>StringMax))or((length(Edit2.Text)>StringMax))or((length(Edit3.Text)>StringMax))or((length(Edit4.Text)>StringMax)) then
  begin
       showmessage('Вы превысили максимальное количество символов в строке('+inttostr(StringMax)+')');
       exit;
       end;
  Devices[DevicesQ+1].DeviceNumber:=DevicesQ+1;
  Devices[DevicesQ+1].Name:=Edit1.Text;
  Devices[DevicesQ+1].TurnOn:=Edit2.Text;
  Devices[DevicesQ+1].TurnOff:=Edit3.Text;
  Devices[DevicesQ+1].StateRequest:=Edit4.Text;
  inc(DevicesQ);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  form2.close;
  refreshdevicelist;
  refreshdevicestatelist;
end;

end.

