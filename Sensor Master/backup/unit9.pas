unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;
procedure form9refresh;
var
  form9: Tform9;

implementation
uses unit1,unit7;
{$R *.lfm}

procedure form9refresh;
var i:integer;
begin
form9.combobox1.clear;
form9.combobox2.clear;
for i:=1 to DevicesQ do
form9.combobox1.items.add(Devices[i].Name);
form9.combobox2.items.add('Вкл');
form9.combobox2.items.add('Выкл');
form9.combobox1.text:='Устройство';
form9.combobox2.text:='Действие';
end;

procedure Tform9.Button1Click(Sender: TObject);
begin
with Scripts[currentscript].Actions[Scripts[currentscript].ActionQ+1] do
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
  inc(Scripts[currentscript].ActionQ);
  form9.close;
  refreshactionlist_edit;
  {with Scripts[currentscript] do
     begin
     Action:=Action+Combobox1.Text+Combobox2.Text+';';
     inc(ActionQ);
     form9.close;
     end;} //Старый вариант
end;
end;

end.
