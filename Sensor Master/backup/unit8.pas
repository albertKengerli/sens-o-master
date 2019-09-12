unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Add: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
     procedure AddClick(Sender: TObject);
  private

  public

  end;
procedure form8refresh;

var
  form8: Tform8;

implementation
//Связка форм
uses unit1, unit7;
{$R *.lfm}

{ Tform8 }
procedure form8refresh;
var i:integer;
begin
form8.combobox1.clear;
form8.combobox2.clear;
for i:=1 to SensorsQ do
form8.Combobox1.Items.Add(Sensors[i].Name);

form8.Combobox2.Items.Add('>');
form8.Combobox2.Items.Add('<');
form8.Combobox2.Items.Add('=');
form8.Combobox2.Items.Add('<>');
form8.Combobox2.Items.Add('>=');
form8.Combobox2.Items.Add('<=');
form8.combobox1.text:='Датчик';
form8.combobox2.text:='Условие';
form8.edit1.clear;
end;


//КНОПКА Добавить условие
procedure Tform8.AddClick(Sender: TObject);
begin
with Scripts[currentscript].Conditions[Scripts[currentscript].ConditionQ+1] do
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
                                                showmessage('Введите значение!');
                                                exit;
                                                end;
  SensName:=Combobox1.Text;
  Sign:=Combobox2.text;
  Value:=strtoint(Edit1.Text);
  inc(Scripts[currentscript].ConditionQ);
  form8.close;
  refreshconditionlist_edit;
{with Scripts[currentscript] do
     begin
     Condition:=Condition+Combobox1.Text+Combobox2.Text+Edit1.Text+';';
     inc(ConditionQ);
     form8.close;
     end;
end;     } //Старый вариант


end;
end;



end.
