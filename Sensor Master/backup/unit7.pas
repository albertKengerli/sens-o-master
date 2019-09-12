unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  EditBtn, ExtCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    ActionList: TStringGrid;
    BtnAddAct: TButton;
    BtnAddCond: TButton;
    BtnAddScript: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    CheckDisposable: TCheckBox;
    CheckGroup1: TCheckGroup;
    CheckNotification: TCheckBox;
    ConditionList: TStringGrid;
    DeleteActBox: TComboBox;
    DeleteCondBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    StaticText1: TStaticText;
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
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure TimeToggleChange(Sender: TObject);
    procedure WDayToggleChange(Sender: TObject);
  private

  public

  end;
procedure refreshconditionlist_edit;
procedure refreshactionlist_edit;
procedure form7refresh;
var
  Form7: TForm7;
implementation
Uses unit1,unit8,Unit9;
{$R *.lfm}

{ Tform7 }
procedure pt(a:string);
begin
form7.memo1.lines.add(a);
end;

procedure form7refresh;
var i:integer;
begin
refreshconditionlist_edit;
refreshactionlist_edit;
form7.WDayToggle.Checked:=false;
form7.CheckNotification.Checked:=false;
form7.CheckDisposable.Checked:=false;
form7.TimeToggle.Checked:=false;
form7.RadioButton1.Checked:=false;
form7.RadioButton2.Checked:=false;
for i:=0 to 6 do
form7.CheckGroup1.Checked[i]:=false;
form7.TimeEdit1.Clear;
form7.TimeEdit2.Clear;
form7.TimeEdit3.Clear;
with Scripts[CurrentScript] do
begin
if Notificate then form7.CheckNotification.Checked:=true;
if Disposable then form7.CheckDisposable.Checked:=true;
if Weekday    then
   begin
        form7.WDayToggle.Checked:=true;
        for i:=1 to 7 do
        if Day[i] then form7.CheckGroup1.checked[i-1]:=true;
   end;
if Timing.ExactTime then
   begin
        form7.TimeToggle.Checked:=true;
        form7.radiobutton1.enabled:=true;
        form7.radiobutton2.enabled:=true;
        form7.radiobutton1.checked:=true;
        form7.TimeEdit1.enabled:=true;
        form7.Label1.Visible:=true;
        form7.TimeEdit1.Visible:=true;
        form7.timeedit1.Time:=strtotime(timing.time1);
   end;
if Timing.GapTime then
   begin
        form7.TimeToggle.Checked:=true;
        form7.radiobutton1.enabled:=true;
        form7.radiobutton2.enabled:=true;
        form7.radiobutton2.checked:=true;
        form7.Label2.Visible:=true;
        form7.Label3.Visible:=true;
        form7.TimeEdit2.Enabled:=true;
        form7.TimeEdit3.Enabled:=true;
        form7.TimeEdit2.Visible:=true;
        form7.TimeEdit3.Visible:=true;
        form7.timeedit2.Time:=timing.time2;
        form7.timeedit3.Time:=timing.time3;
   end;

end;
end;

//ПРОЦЕДУРА Обновить список условий
procedure refreshconditionlist_edit;
var i:integer;
begin
with form7.ConditionList do
begin
     RowCount:=Scripts[currentscript].ConditionQ+1;
for i:=1 to RowCount-1 do
     with Scripts[currentscript].Conditions[i] do
     begin
          cells[2,i]:=inttostr(i);
          cells[3,i]:=SensName;
          cells[4,i]:=Sign;
          cells[5,i]:=inttostr(value);
     end;

form7.DeleteCondBox.Clear;
for i:=1 to Scripts[currentscript].ConditionQ do
    form7.DeleteCondBox.Items.Add(inttostr(i));
form7.DeleteCondBox.Text:=('Удалить условие №');
end;
end;

//ПРОЦЕДУРА Обновить список действий
procedure refreshactionlist_edit;
var i:integer;
begin
with form7.ActionList do
begin
     RowCount:=Scripts[currentscript].ActionQ+1;
for i:=1 to RowCount-1 do
     with Scripts[currentscript].Actions[i] do
     begin
          cells[0,i]:=inttostr(i);
          cells[1,i]:=DevName;
          cells[2,i]:=ToDo;
     end;
end;
form7.DeleteActBox.Clear;
for i:=1 to Scripts[currentscript].ActionQ do
    form7.DeleteActBox.Items.Add(inttostr(i));
form7.DeleteActBox.Text:=('Удалить действие №');
end;

//ПРОЦЕДУРА Удаление условия из комбобокса
procedure Tform7.DeleteCondBoxChange(Sender: TObject);
var i:integer;
begin
for i:=strtoint(DeleteCondBox.Text) to Scripts[currentscript].ConditionQ-1 do
     Scripts[currentscript].Conditions[i]:=Scripts[currentscript].Conditions[i+1];
     dec(Scripts[currentscript].ConditionQ);
refreshconditionlist_edit;
end;

//ПРОЦЕДУРА Удаление действие из комбобокса
procedure Tform7.DeleteActBoxChange(Sender: TObject);
var i:integer;
begin
for i:=strtoint(DeleteActBox.Text) to Scripts[currentscript].ActionQ-1 do
     Scripts[currentscript].Actions[i]:=Scripts[currentscript].Actions[i+1];
     dec(Scripts[currentscript].ActionQ);
refreshactionlist_edit;
end;

//ПРОЦЕДУРА Редактирование массива условий через ConditionList ???Переделать
procedure Tform7.ConditionListEditingDone(Sender: TObject);
begin
ConditionList:=Sender as TStringGrid;
case ConditionList.Col of
     3: Scripts[currentscript].Conditions[ConditionList.Row].SensName:=ConditionList.Cells[ConditionList.Col, ConditionList.Row];
     4: Scripts[currentscript].Conditions[ConditionList.Row].Sign:=ConditionList.Cells[ConditionList.Col, ConditionList.Row];
     5: Scripts[currentscript].Conditions[ConditionList.Row].Value:=strtoint(ConditionList.Cells[ConditionList.Col, ConditionList.Row])
end;
end;

//ПРОЦЕДУРА Редактирование массива действий через ActionList
procedure Tform7.ActionListEditingDone(Sender: TObject);
begin
ActionList:=Sender as TStringGrid;
case ActionList.Col of
     1:Scripts[currentscript].Actions[ActionList.Row].DevName:=ActionList.Cells[ActionList.Col, ActionList.Row];
     2:Scripts[currentscript].Actions[ActionList.Row].ToDo:=ActionList.Cells[ActionList.Col, ActionList.Row];
end;
end;









//Добавить условие
procedure Tform7.BtnAddCondClick(Sender: TObject);
begin
  form8refresh;
  form8.Show;
end;

//Добавить действие
procedure Tform7.BtnAddActClick(Sender: TObject);
begin
     form9refresh;
     Form9.Show;

end;





//Добавить зависимость от времени
procedure Tform7.TimeToggleChange(Sender: TObject);
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
procedure Tform7.RadioButton1Change(Sender: TObject);
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
procedure Tform7.RadioButton2Change(Sender: TObject);
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
procedure Tform7.WDayToggleChange(Sender: TObject);
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
procedure Tform7.BtnAddScriptClick(Sender: TObject);
var i:integer;
begin
With Scripts[currentscript] do
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
      form7.close;
end;
refreshconditionlist_edit;
refreshactionlist_edit;
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
showscript;
end;




//TEMPКнопка вывести кол-во условий
procedure Tform7.Button5Click(Sender: TObject);
begin
  pt('Количество условий: '+inttostr(Scripts[currentscript].ConditionQ));
end;

//TEMPКнопка обновить список действий
procedure Tform7.Button6Click(Sender: TObject);
begin
  refreshactionlist_edit;
end;

//TEMPКнопка обновить список условий
procedure Tform7.Button1Click(Sender: TObject);
begin
  refreshconditionlist_edit;
end;

//TEMPКнопка вывести все скрипты  - TOFIX
procedure Tform7.Button2Click(Sender: TObject);
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
procedure Tform7.Button3Click(Sender: TObject);
var i:integer;
begin
{for i:=1 to 1 do
  pt(Scripts[i].Condition);
pt('Количество условий у скрипта: '+inttostr(Scripts[i].ConditionQ));}

for i:=1 to Scripts[currentscript].ConditionQ do
begin
    with scripts[currentscript].Conditions[i] do
         begin
         pt('Условие#'+inttostr(i));
         pt(SensName+Sign+inttostr(Value));
         end;
end;
end;

//TEMPКнопка вывести все действия
procedure Tform7.Button4Click(Sender: TObject);
var i:integer;
begin
for i:=1 to Scripts[currentscript].ActionQ do
begin
    with scripts[currentscript].Actions[i] do
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

