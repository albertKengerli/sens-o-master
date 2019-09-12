unit ScriptAction;

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
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure formcreate(sender:TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation
uses unit1,unit5;
{$R *.lfm}

procedure TForm6.FormCreate(Sender:TObject);
var i:integer;
begin
combobox1.clearselection;
combobox2.clearselection;

for i:=1 to DevicesQ do
combobox1.items.add(Devices[i].Name);

combobox2.items.add('Вкл');
combobox2.items.add('Выкл');
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  with Scripts[ScriptsQ+1] do
     begin
     Action:=Action+Combobox1.Text+Combobox2.Text+';';
     inc(ActionQ);
     form6.close;
     end;
end;

end.

