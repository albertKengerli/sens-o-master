unit unit4; //ДОБАВЛЕНИЕ УСЛОВИЯ ДЛЯ СЦЕНАРИЯ

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Add: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    procedure AddClick(Sender: TObject);
  private

  public

  end;
procedure form4refresh;

var
  Form4: TForm4;

implementation
//Связка форм
uses unit1, unit5;
{$R *.lfm}

{ TForm4 }
procedure form4refresh;
var i:integer;
begin
form4.combobox1.clear;
form4.combobox2.clear;
for i:=1 to SensorsQ do
form4.Combobox1.Items.Add(Sensors[i].Name);

form4.Combobox2.Items.Add('>');
form4.Combobox2.Items.Add('<');
form4.Combobox2.Items.Add('=');
form4.Combobox2.Items.Add('<>');
form4.Combobox2.Items.Add('>=');
form4.Combobox2.Items.Add('<=');
form4.combobox1.text:='Датчик';
form4.combobox2.text:='Условие';
form4.edit1.clear;
end;


//КНОПКА Добавить условие
procedure TForm4.AddClick(Sender: TObject);
begin
with Scripts[ScriptsQ+1].Conditions[Scripts[ScriptsQ+1].ConditionQ+1] do
begin
  if Combobox1.Text='Датчик' then begin
                                      showmessage('Выберите датчик!');
                                      exit;
                                      end;
  if Combobox2.Text='Условие' then begin
                                      showmessage('Выберите условие!');
                                      exit;
                                      end;
  if ((Edit1.Text='') or (Edit1.Text=' ')) then begin
                                                showmessage('Выберите условие!');
                                                exit;
                                                end;
  SensName:=Combobox1.Text;
  Sign:=Combobox2.text;
  Value:=strtoint(Edit1.Text);
  inc(Scripts[ScriptsQ+1].ConditionQ);
  form4.close;
  refreshconditionlist;
{with Scripts[ScriptsQ+1] do
     begin
     Condition:=Condition+Combobox1.Text+Combobox2.Text+Edit1.Text+';';
     inc(ConditionQ);
     form4.close;
     end;
end;     } //Старый вариант


end;
end;



end.
