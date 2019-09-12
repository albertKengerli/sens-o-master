unit unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  ExtCtrls, EditBtn, ActnList;

type

  { TForm5 }

  TForm5 = class(TForm)
    BtnAddCond: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BtnAddAct: TButton;
    BtnAddScript: TButton;
    Button6: TButton;
    CheckNotification: TCheckBox;
    CheckDisposable: TCheckBox;
    CheckGroup1: TCheckGroup;
    DeleteActBox: TComboBox;
    DeleteCondBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    StaticText1: TStaticText;
    ConditionList: TStringGrid;
    ActionList: TStringGrid;
    TimeEdit1: TTimeEdit;
    TimeEdit2: TTimeEdit;
    TimeEdit3: TTimeEdit;
    TimeToggle: TToggleBox;
    WDayToggle: TToggleBox;
    procedure ActionListEditingDone(Sender: TObject);
    procedure BtnAddCondClick(Sender: TObject);
    procedure BtnAddScriptClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BtnAddActClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DeleteActBoxChange(Sender: TObject);
    procedure ConditionListEditingDone(Sender: TObject);
    procedure DeleteCondBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure TimeToggleChange(Sender: TObject);
    procedure WDayToggleChange(Sender: TObject);
  private

  public

  end;
procedure refreshconditionlist;
procedure refreshactionlist;

var
  Form5: TForm5;
  NewScript: integer;
implementation
Uses unit1,unit4,unit6;
{$R *.lfm}

{ TForm5 }
procedure pt(a:string);
begin
form5.memo1.lines.add(a);
end;


//ПРОЦЕДУРА Обновить список условий
procedure refreshconditionlist;
var i:integer;
begin
with Form5.ConditionList do
begin
     RowCount:=Scripts[ScriptsQ+1].ConditionQ+1;
for i:=1 to RowCount-1 do
     with Scripts[ScriptsQ+1].Conditions[i] do
     begin
          cells[2,i]:=inttostr(i);
          cells[3,i]:=SensName;
          cells[4,i]:=Sign;
          cells[5,i]:=inttostr(value);
     end;

form5.DeleteCondBox.Clear;
for i:=1 to Scripts[ScriptsQ+1].ConditionQ do
    form5.DeleteCondBox.Items.Add(inttostr(i));
form5.DeleteCondBox.Text:=('Удалить условие №');
end;
end;

//ПРОЦЕДУРА Обновить список действий
procedure refreshactionlist;
var i:integer;
begin
with Form5.ActionList do
begin
     RowCount:=Scripts[ScriptsQ+1].ActionQ+1;
for i:=1 to RowCount-1 do
     with Scripts[ScriptsQ+1].Actions[i] do
     begin
          cells[0,i]:=inttostr(i);
          cells[1,i]:=DevName;
          cells[2,i]:=ToDo;
     end;
end;
form5.DeleteActBox.Clear;
for i:=1 to Scripts[ScriptsQ+1].ActionQ do
    form5.DeleteActBox.Items.Add(inttostr(i));
form5.DeleteActBox.Text:=('Удалить действие №');
end;

//ПРОЦЕДУРА Удаление условия из комбобокса
procedure TForm5.DeleteCondBoxChange(Sender: TObject);
var i:integer;
begin
for i:=strtoint(DeleteCondBox.Text) to Scripts[ScriptsQ+1].ConditionQ-1 do
     Scripts[ScriptsQ+1].Conditions[i]:=Scripts[ScriptsQ+1].Conditions[i+1];
     dec(Scripts[ScriptsQ+1].ConditionQ);
refreshconditionlist;
end;

//ПРОЦЕДУРА Удаление действие из комбобокса
procedure TForm5.DeleteActBoxChange(Sender: TObject);
var i:integer;
begin
for i:=strtoint(DeleteActBox.Text) to Scripts[ScriptsQ+1].ActionQ-1 do
     Scripts[ScriptsQ+1].Actions[i]:=Scripts[ScriptsQ+1].Actions[i+1];
     dec(Scripts[ScriptsQ+1].ActionQ);
refreshactionlist;
end;

//ПРОЦЕДУРА Редактирование массива условий через ConditionList ???Переделать
procedure TForm5.ConditionListEditingDone(Sender: TObject);
begin
ConditionList:=Sender as TStringGrid;
case ConditionList.Col of
     3: Scripts[ScriptsQ+1].Conditions[ConditionList.Row].SensName:=ConditionList.Cells[ConditionList.Col, ConditionList.Row];
     4: Scripts[ScriptsQ+1].Conditions[ConditionList.Row].Sign:=ConditionList.Cells[ConditionList.Col, ConditionList.Row];
     5: Scripts[ScriptsQ+1].Conditions[ConditionList.Row].Value:=strtoint(ConditionList.Cells[ConditionList.Col, ConditionList.Row])
end;
end;

//ПРОЦЕДУРА Редактирование массива действий через ActionList
procedure TForm5.ActionListEditingDone(Sender: TObject);
begin
ActionList:=Sender as TStringGrid;
case ActionList.Col of
     1:Scripts[ScriptsQ+1].Actions[ActionList.Row].DevName:=ActionList.Cells[ActionList.Col, ActionList.Row];
     2:Scripts[ScriptsQ+1].Actions[ActionList.Row].ToDo:=ActionList.Cells[ActionList.Col, ActionList.Row];
end;
end;





//CОБЫТИЕ Открытие окна
procedure TForm5.FormCreate(Sender: TObject);
begin
refreshconditionlist;
refreshactionlist;
end;




//Добавить условие
procedure TForm5.BtnAddCondClick(Sender: TObject);
begin
  form4refresh;
  form4.Show;
end;

//Добавить действие
procedure TForm5.BtnAddActClick(Sender: TObject);
begin
     form6refresh;
     Form6.Show;

end;





//Добавить зависимость от времени
procedure TForm5.TimeToggleChange(Sender: TObject);
begin
if TimeToggle.Checked=true
then
    begin
    RadioButton1.Enabled:=true;
    RadioButton2.Enabled:=true;
    end
else
    begin
    RadioButton1.Enabled:=false;
    RadioButton2.Enabled:=false;
    TimeEdit1.Visible:=false;
    TimeEdit2.Visible:=false;
    TimeEdit3.Visible:=false;
    Label1.Visible:=false;
    Label2.Visible:=false;
    Label3.Visible:=false;
    RadioButton1.Checked:=false;
    RadioButton2.Checked:=false;
    end;

 end;

//Вкл-выкл ввода точного времени
procedure TForm5.RadioButton1Change(Sender: TObject);
begin
  if RadioButton1.Checked=true
  then
      begin
           Label1.Visible:=true;
           TimeEdit1.Visible:=true;
           TimeEdit1.Enabled:=true
      end
      else
      begin
           TimeEdit1.Visible:=false;
           Label1.Visible:=false;
           TimeEdit1.Enabled:=false;
      end;

end;

//Вкл-выкл ввода промежутка времени
procedure TForm5.RadioButton2Change(Sender: TObject);
begin
  if RadioButton2.Checked=true
    then begin
         Label2.Visible:=true;
         Label3.Visible:=true;
         TimeEdit2.Enabled:=true;
         TimeEdit3.Enabled:=true;
         TimeEdit2.Visible:=true;
         TimeEdit3.Visible:=true
    end
    else begin
         Label2.Visible:=false;
         Label3.Visible:=false;
         TimeEdit2.Enabled:=false;
         TimeEdit3.Enabled:=false;
         TimeEdit2.Visible:=false;
         TimeEdit3.Visible:=false;
    end;
end;




//Добавить зависимость от дня недели
procedure TForm5.WDayToggleChange(Sender: TObject);
begin
if WDayToggle.Checked
then
    begin
         CheckGroup1.Enabled:=true;
    end
else
    begin
         Checkgroup1.Enabled:=false;
    end;
end;


//Сохранить скрипт
procedure TForm5.BtnAddScriptClick(Sender: TObject);
var i:integer;
begin
With Scripts[ScriptsQ+1] do
begin
     Notificate:=CheckNotification.Checked;
     Disposable:=CheckDisposable.Checked;
     Timing.ExactTime:=RadioButton1.Checked;
     Timing.GapTime:=RadioButton2.Checked;
     if TimeEdit1.Enabled=True then
        Timing.Time1:=formatdatetime('hh:mm',TimeEdit1.Time);
     if TimeEdit2.Enabled=True then
        begin
        Timing.Time2:=TimeEdit2.Time;
        Timing.Time3:=TimeEdit3.Time;
        end;
      for i:=0 to 6 do
           if CheckGroup1.Checked[i] then Day[i+1]:=true;
      WeekDay:=WDayToggle.Checked;
      inc(ScriptsQ);
      form5.close;
      refreshscripts;
end;
refreshconditionlist;
refreshactionlist;
WDayToggle.Checked:=false;
CheckNotification.Checked:=false;
CheckDisposable.Checked:=false;
TimeToggle.Checked:=false;
RadioButton1.Checked:=false;
RadioButton2.Checked:=false;
for i:=0 to 6 do
CheckGroup1.Checked[i]:=false;
TimeEdit1.Clear;
TimeEdit2.Clear;
TimeEdit3.Clear;
end;




//TEMPКнопка вывести кол-во условий
procedure TForm5.Button5Click(Sender: TObject);
begin
  pt('Количество условий: '+inttostr(Scripts[ScriptsQ+1].ConditionQ));
end;

//TEMPКнопка обновить список действий
procedure TForm5.Button6Click(Sender: TObject);
begin
  refreshactionlist;
end;

//TEMPКнопка обновить список условий
procedure TForm5.Button1Click(Sender: TObject);
begin
  refreshconditionlist;
end;

//TEMPКнопка вывести все скрипты  - TOFIX
procedure TForm5.Button2Click(Sender: TObject);
var i:integer;
begin
for i:=1 to ScriptsQ do
begin
  with Scripts[i] do
  begin
  //pt(Condition);
  //pt(Action);
  //pt(Timing);
  end;
  end;
end;

//TEMPКнопка вывести все условия
procedure TForm5.Button3Click(Sender: TObject);
var i:integer;
begin
{for i:=1 to 1 do
  pt(Scripts[i].Condition);
pt('Количество условий у скрипта: '+inttostr(Scripts[i].ConditionQ));}

for i:=1 to Scripts[ScriptsQ+1].ConditionQ do
begin
    with scripts[scriptsq+1].Conditions[i] do
         begin
         pt('Условие#'+inttostr(i));
         pt(SensName+Sign+inttostr(Value));
         end;
end;
end;

//TEMPКнопка вывести все действия
procedure TForm5.Button4Click(Sender: TObject);
var i:integer;
begin
for i:=1 to Scripts[ScriptsQ+1].ActionQ do
begin
    with scripts[scriptsq+1].Actions[i] do
         begin
         pt('Действие#'+inttostr(i));
         pt(DevName+ToDo);
         end;
end;
{for i:=1 to 1 do
  pt(Scripts[i].Action);
pt('Количество действий у скрипта: '+inttostr(Scripts[i].ActionQ));}
end;

end.

