unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;
procedure form6refresh;
var
  Form6: TForm6;

implementation
uses unit1,unit5;
{$R *.lfm}

procedure form6refresh;
var i:integer;
begin
form6.combobox1.clear;
form6.combobox2.clear;
for i:=1 to DevicesQ do
form6.combobox1.items.add(Devices[i].Name);
form6.combobox2.items.add('Вкл');
form6.combobox2.items.add('Выкл');
form6.combobox1.text:='Устройство';
form6.combobox2.text:='Действие';
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
with Scripts[ScriptsQ+1].Actions[Scripts[ScriptsQ+1].ActionQ+1] do
begin
  if Combobox1.Text='Устройство' then begin
                                      showmessage('Выберите устройство!');
                                      exit;
                                      end;
  if Combobox2.Text='Действие' then begin
                                      showmessage('Выберите действие!');
                                      exit;
                                      end;
  DevName:=Combobox1.Text;
  ToDo:=Combobox2.Text;
  inc(Scripts[ScriptsQ+1].ActionQ);
  form6.close;
  refreshactionlist;
  {with Scripts[ScriptsQ+1] do
     begin
     Action:=Action+Combobox1.Text+Combobox2.Text+';';
     inc(ActionQ);
     form6.close;
     end;} //Старый вариант
end;
end;

end.

