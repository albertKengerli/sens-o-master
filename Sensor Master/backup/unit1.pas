unit unit1;

{$mode objfpc}{$H+}
{$WARN 5024 off : Parameter "$1" not used}
{$WARN 4104 off : Implicit string type conversion from "$1" to "$2"}
{$WARN 2005 off : Comment level $1 found}
{$WARN 4105 off : Implicit string type conversion with potential data loss from "$1" to "$2"}
interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  Menus, ActnList, ExtCtrls, Grids, EditBtn, IniFiles, IdHTTP, IdSSLOpenSSL, DateUtils, superobject, lazutf8;

type

  { TForm1 }

  TForm1 = class(TForm)
    AddDeviceButton: TButton;
    AddSensorButton: TButton;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button5: TButton;
    buttonUpdate: TButton;
    buttonCommand: TButton;
    Button2: TButton;
    Button3: TButton;
    AddScriptButton: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ComboBox1: TComboBox;
    ActionGrid: TStringGrid;
    botNumber: TComboBox;
    DeleteSensorButton: TButton;
    DeleteDeviceButton: TButton;
    DeviceList: TStringGrid;
    Edit2: TEdit;
    editCommand: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    memoTest: TMemo;
    memoBot: TMemo;
    RequestButton: TButton;
    DebugPage: TTabSheet;
    ConditionGrid: TStringGrid;
    SettingsGrid: TStringGrid;
    botPage: TTabSheet;
    StaticText1: TStaticText;
    Terminal: TEdit;
    Clock: TLabel;
    SensorState: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    SensorList: TStringGrid;
    Edit1: TEdit;
    PageControl1: TPageControl;
    RefreshButton: TButton;
    LoadDataButton: TButton;
    Memo1: TMemo;
    SaveDataButton: TButton;
    PageControl: TPageControl;
    MainPage: TTabSheet;
    LogicPage: TTabSheet;
    SettingsPage: TTabSheet;
    ShowDataButton: TToggleBox;
    DeviceTab: TTabSheet;
    SensorTab: TTabSheet;
    DeviceState: TStringGrid;
    Timer1: TTimer;
    Timer10: TTimer;
    Timer11: TTimer;
    Timer12: TTimer;
    Timer13: TTimer;
    Timer14: TTimer;
    Timer15: TTimer;
    Timer16: TTimer;
    Timer17: TTimer;
    Timer18: TTimer;
    Timer19: TTimer;
    Timer2: TTimer;
    Timer20: TTimer;
    Timer21: TTimer;
    Timer22: TTimer;
    Timer23: TTimer;
    Timer24: TTimer;
    Timer25: TTimer;
    Timer26: TTimer;
    Timer27: TTimer;
    Timer28: TTimer;
    Timer29: TTimer;
    Timer3: TTimer;
    Timer30: TTimer;
    Timer31: TTimer;
    Timer32: TTimer;
    ScriptTimer: TTimer;
    DevRequest: TTimer;
    timerSaveLog: TTimer;
    timerBotUpdate: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Timer9: TTimer;
    Timer33: TTimer;
    toggleBot: TToggleBox;
    procedure timerBotUpdateTimer(Sender: TObject);
    procedure AddDeviceButtonClick(Sender: TObject);
    procedure AddSensorButtonClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure buttonUpdateClick(Sender: TObject);
    procedure botPageEnter(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure buttonCommandClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AddScriptButtonClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure LogicPageShow(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure RequestButtonClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DeleteDeviceButtonClick(Sender: TObject);
    procedure DeleteSensorButtonClick(Sender: TObject);
    procedure DeviceListEditingDone(Sender: TObject);
    procedure SensorListEditingDone(Sender: TObject);
    procedure LoadDataButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure SaveDataButtonClick(Sender: TObject);
    procedure ShowDataButtonChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ScriptTimerTimer(Sender: TObject);
    procedure DevRequestTimer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer14Timer(Sender: TObject);
    procedure Timer15Timer(Sender: TObject);
    procedure Timer16Timer(Sender: TObject);
    procedure Timer17Timer(Sender: TObject);
    procedure Timer18Timer(Sender: TObject);
    procedure Timer19Timer(Sender: TObject);
    procedure Timer20Timer(Sender: TObject);
    procedure Timer21Timer(Sender: TObject);
    procedure Timer22Timer(Sender: TObject);
    procedure Timer23Timer(Sender: TObject);
    procedure Timer24Timer(Sender: TObject);
    procedure Timer25Timer(Sender: TObject);
    procedure Timer26Timer(Sender: TObject);
    procedure Timer27Timer(Sender: TObject);
    procedure Timer28Timer(Sender: TObject);
    procedure Timer29Timer(Sender: TObject);
    procedure Timer30Timer(Sender: TObject);
    procedure Timer31Timer(Sender: TObject);
    procedure Timer32Timer(Sender: TObject);
    procedure Timer33Timer(Sender: TObject);
    procedure timerSaveLogTimer(Sender: TObject);
    procedure toggleBotClick(Sender: TObject);


  private

  public

  end;
  procedure refreshdevicelist;
  procedure refreshsensorlist;
  procedure refreshdevicestatelist;
  procedure refreshsensorstatelist;
  procedure refreshscripts;
  procedure showscript;
  procedure botSubsMSG(text:string);



const
  DeviceMax=32;
  SensorsMax=32;
  ScriptsMax=50;
  ConditionsMax=32;
  ActionsMax=32;
  StringMax=100;
  StringMega=200;
  subscribedMax=5;
  botsMax=3;
  botUrl='https://api.telegram.org/bot'; //начало строки для http запроса боту
  br='%0A';
type
   TMyThread = class(TThread)
   private
   protected
   procedure Execute; override;
end;

type
  //Тип записи для условий в сценарии
    CON = packed record
       SensName, Sign:string[StringMax];
       value:integer;
    end;

  //Тип записи для действий в сценарии
    ACT = packed record
       DevName, ToDo: string[StringMax];
    end;

  //Тип записи для хранения данных устройств
    DVC = packed record
      PowerState: boolean;
      DeviceNumber:integer;
      Name, TurnOn, TurnOff, StateRequest, State: string[StringMax];
    end;
    //Тип записи для хранения данных сенсоров
    SNS = packed record
       SensorNumber, DataPlace, RequestFreq, StateInt :integer;
       Name, MeasureUnit, StateRequest, State: string[StringMax];

    end;
    //Тип записи для хранения тайминга скрипта
    TMG = packed record
       ExactTime, GapTime: boolean;
       Time1: string;
       Time2, Time3: TDateTime;
    end;

    //Тип записи для хранения данных сценариев
    SCR = packed record
       Conditions: array [1..ConditionsMax] of CON;
       Actions: array [1..ActionsMax] of ACT;
       Timing: TMG;
       Day: array [1..7] of boolean;
       Notificate, Disposable, WeekDay: boolean;
       ConditionQ, ActionQ: integer;
    end;

    TBOT = packed record
        token: string;
        subscribed: array [1..subscribedMax] of string;
        subscribedQ: integer;
    end;



var
  Form1: TForm1;
  THTTP: tidhttp;
  THTTP2: tidhttp;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  offset:integer=0;
  messageString: string;
  keyboardString:string;
  keyboardInterface: string;
  deleteDev, deleteSen, editDev, editSen, clickDev,chooseSetDev,scrRun: boolean;
  MyThread: TMyThread;

  //DEVICES
  Devices: array [1..DeviceMax] of DVC; //Массив
  DevicesQ: integer;                    //Счетчик количества
  DeviceData: TIniFile;                 //Файл с данными

  //SENSORS
  Sensors: array [1..DeviceMax] of SNS; //Массив
  SensorsQ: integer;                    //Счетчик количества
  SensorData: TIniFile;                 //Файл с данными

  //SCRIPTS
  Scripts: array [1..DeviceMax] of SCR; //Массив
  ScriptsQ: integer;                    //Счетчик количества
  ScriptData: TIniFile;                 //Файл с данными
  CurrentScript:integer;

  //TBOTS
  bot: array [1..botsMax] of TBOT;      //массив
  botQ: integer;                        //счетчик ботов
  botData: TIniFile;                    //файл с данными

implementation

//Связка форм
uses unit2,unit3,unit5,unit7, unit10;
{$R *.lfm}

{ TForm1 }

{                                 BACK  END                                    }

//--------------------------------------------------------------------------TEMP
{
//TEMP обрезание ответа
procedure make_answer(a:integer);
var i:string;
begin
with Sensors[a] do
begin
StateText:=State;
delete(StateText, 1, pos('(',StateText)-1);
delete(StateText,pos(';',StateText),1);
StateText:=StringReplace(StateText,'(',',',[]);
StateText:=StringReplace(StateText,')',',',[]);
StateText:=StateText+' '+MeasureUnit;
pp(StateText);
end;
end;


//TEMP Сделает из конченого ответа - нормальный, циферный
function pars_sensor(a:integer):integer;
var i:integer;
begin
with Sensors[a] do
begin
     delete(State, 1, pos('(',State)-1);
     delete(State,pos(';',State),1);
     State:=StringReplace(State,'(',',',[]);
     State:=StringReplace(State,')',',',[]);
     for i:=1 to DataPlace do
         delete(State,1,pos(',',State));
     delete(State,pos(',',State),100);
     result:=strtoint(State);
end;
end;
}

//-----------------------------------------------------------------------СИСТЕМА

//перевод дня недели в привычный славянину вид
function DayOfTheWeek(DateTime : TDateTime):integer;
const ISOFirstWeekDay = 2;
begin
  result:= ((DayOfWeek(DateTime) - ISOFirstWeekDay + 7) mod 7) + 1;
end;

//url encode
function UrlEncode(const S: string): string;
var
  i: integer;
  u: ansistring;
  r: ansistring;
begin
  r := '';
  u := ansistring(UTF8Encode(S));
  for i := 1 to Length(u) do
  begin
    case u[i] of
      'A'..'Z', 'a'..'z', '0'..'9', '-', '_', '.':
        r := r + u[i];
    else
      r := r + '%' + ansistring(IntToHex(Ord(u[i]), 2));
    end;
  end;
  Result := string(r);
end;

//отправить запрос в интернет
function command(a:string):string;
begin
try
    THttp:=TIdHTTP.Create;
    thttp.Request.BasicAuthentication:=true;
    Result:=THTTP.Get(a);
 finally
    THttp.Free;
 end;

end;

//из имени датчика получить его номер
function sensnametonumber(a:string):integer;
var i:integer;
begin
for i:=1 to SensorsQ do
with Sensors[i] do
begin
if name=a then
     result:=(i);
end;

end;

//из имени устройства получить его номер
function devnametonumber(a:string):integer;
var i:integer;
begin
for i:=1 to DevicesQ do
with Devices[i] do
begin
if name=a then
     result:=(i);
end;

end;

//сохранить лог
procedure savelog;
begin
if form1.memo5.ToString<>'' then
  form1.memo5.lines.SaveToFile(ExtractFilePath(ParamStr(0))+'Log\'+formatDateTime('dd-mm-yyyy_hh-mm',now)+'scriptsLog.txt');
if form1.memoBot.toString<>'' then
   form1.memoBot.lines.saveToFile(ExtractFilePath(ParamStr(0))+'Log\'+formatDateTime('dd-mm-yyyy_hh-mm',now)+'botLog.txt');
form1.memo5.lines.clear;
form1.memoBot.lines.clear;
end;

//сохранение настроек
procedure savedata;
var
   i,z:integer;
   L: TStringList;
begin
if(FileExists('DeviceData.ini')) then
     begin
           L := TStringList.Create;
           L.LoadFromFile('DeviceData.ini');
           L.Clear;
           L.SaveToFile('DeviceData.ini');
           L.Free;
          DeviceData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'DeviceData.ini');

          DeviceData.WriteInteger('Main','DevicesQuantity',DevicesQ);
          for i:=1 to DevicesQ do
          begin
               DeviceData.WriteString('Device '+inttostr(Devices[i].DeviceNumber),'Name',Devices[i].Name);
               DeviceData.WriteString('Device '+inttostr(Devices[i].DeviceNumber),'TurnOn',Devices[i].TurnOn);
               DeviceData.WriteString('Device '+inttostr(Devices[i].DeviceNumber),'TurnOff',Devices[i].TurnOff);
               DeviceData.WriteString('Device '+inttostr(Devices[i].DeviceNumber),'StateRequest',Devices[i].StateRequest);
               end;
          DeviceData.free;
     end
     else
         showmessage('Файл с данными устройств "DeviceData.ini" не найден');

if(FileExists('SensorData.ini')) then
     begin
          L := TStringList.Create;
           L.LoadFromFile('SensorData.ini');
           L.Clear;
           L.SaveToFile('SensorData.ini');
           L.Free;

          SensorData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'SensorData.ini');

          SensorData.WriteInteger('Main','SensorsQuantity',SensorsQ);
          for i:=1 to SensorsQ do
          begin
               SensorData.WriteString('Sensor '+inttostr(Sensors[i].SensorNumber),'Name',Sensors[i].Name);
               SensorData.WriteString('Sensor '+inttostr(Sensors[i].SensorNumber),'MeasureUnit',Sensors[i].MeasureUnit);
               SensorData.WriteString('Sensor '+inttostr(Sensors[i].SensorNumber),'StateRequest',Sensors[i].StateRequest);
               SensorData.WriteInteger('Sensor '+inttostr(Sensors[i].SensorNumber),'DataPlace',Sensors[i].DataPlace);
               SensorData.WriteInteger('Sensor '+inttostr(Sensors[i].SensorNumber),'RequestFreq',Sensors[i].RequestFreq);
               end;
          SensorData.free;
     end
     else
         showmessage('Файл с данными датчиков "SensorData.ini" не найден');

if(FileExists('ScriptData.ini')) then
begin

               L := TStringList.Create;
                L.LoadFromFile('ScriptData.ini');
                L.Clear;
                L.SaveToFile('ScriptData.ini');
                L.Free;

ScriptData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'ScriptData.ini');

ScriptData.WriteInteger('Main','ScriptsQuantity',ScriptsQ);
for i:=1 to ScriptsQ do
          with Scripts[i] do
          begin
               ScriptData.WriteInteger('Script# '+inttostr(i),'ConditionQ',ConditionQ);
               ScriptData.WriteInteger('Script# '+inttostr(i),'ActionQ',ActionQ);
               ScriptData.WriteBool('Script# '+inttostr(i),'Notificate',Notificate);
               ScriptData.WriteBool('Script# '+inttostr(i),'Disposable',Disposable);
               ScriptData.WriteBool('Script# '+inttostr(i),'ExactTime',Timing.ExactTime);
               ScriptData.WriteBool('Script# '+inttostr(i),'GapTime',Timing.GapTime);
               ScriptData.WriteString('Script# '+inttostr(i),'Time1',Timing.Time1);
               ScriptData.WriteTime('Script# '+inttostr(i),'Time2',Timing.Time2);
               ScriptData.WriteTime('Script# '+inttostr(i),'Time3',Timing.Time3);
               ScriptData.WriteBool('Script# '+inttostr(i),'WeekDay', WeekDay);
               for z:=1 to 7 do
                   ScriptData.WriteBool('Script# '+inttostr(i),'Day '+inttostr(z)+' works',Day[z]);
               for z:=1 to ConditionQ do
                   begin
                   ScriptData.WriteString('Script# '+inttostr(i),'Condition#'+inttostr(z)+' SensName',Conditions[z].SensName);
                   ScriptData.WriteString('Script# '+inttostr(i),'Condition#'+inttostr(z)+' Sign',Conditions[z].Sign);
                   ScriptData.WriteInteger('Script# '+inttostr(i),'Condition#'+inttostr(z)+' Value',Conditions[z].Value);
                   end;
               for z:=1 to ActionQ do
                   begin
                   ScriptData.WriteString('Script# '+inttostr(i),'Action#'+inttostr(z)+' DevName',Actions[z].DevName);
                   ScriptData.WriteString('Script# '+inttostr(i),'Action#'+inttostr(z)+' ToDo',Actions[z].ToDo);
                   end;

          end;
ScriptData.Free;
end
else
         showmessage('Файл с данными сценариев "ScriptData.ini" не найден');

if(FileExists('botData.ini')) then
     begin
           
          L := TStringList.Create;
           L.LoadFromFile('botData.ini');
           L.Clear;
           L.SaveToFile('botData.ini');
           L.Free;

          botData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'botData.ini');

          SensorData.WriteInteger('Main','botQuantity',botQ);
          for i:=1 to botQ do
          begin
               botData.writeString('bot '+inttostr(i), 'token',bot[i].token);
               botData.writeInteger('bot '+inttostr(i),'subscribedQ',bot[i].subscribedQ);
               for z:=1 to bot[i].subscribedQ do
                   begin
                   botData.writeString('bot '+inttostr(i), 'subscriber '+inttostr(z),bot[i].subscribed[z]);
                   end;
          end;
          botData.Free;
     end
     else
         showmessage('Файл с данными ботов не найден.');





end;

//загрузка настроек
procedure loaddata;
var
   i,z:integer;
begin
if(FileExists('DeviceData.ini')) then
     begin
          DeviceData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'DeviceData.ini');
          DevicesQ:=DeviceData.ReadInteger('Main','DevicesQuantity',1);
          for i:=1 to DevicesQ do
          begin
               Devices[i].Name:=DeviceData.ReadString('Device '+inttostr(i),'Name','No name');
               Devices[i].TurnOn:=DeviceData.ReadString('Device '+inttostr(i),'TurnOn','No turn on command');
               Devices[i].TurnOff:=DeviceData.ReadString('Device '+inttostr(i),'TurnOff','No turn off command');
               Devices[i].StateRequest:=DeviceData.ReadString('Device '+inttostr(i),'StateRequest','No state request command');
               Devices[i].DeviceNumber:=i;
               end;
          DeviceData.Free;
     end
     else
         showmessage('Файл с данными устройств не найден');

if(FileExists('SensorData.ini')) then
     begin
          SensorData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'SensorData.ini');
          SensorsQ:=SensorData.ReadInteger('Main','SensorsQuantity',1);
          for i:=1 to SensorsQ do
          begin
               Sensors[i].Name:=SensorData.ReadString('Sensor '+inttostr(i),'Name','No name');
               Sensors[i].MeasureUnit:=SensorData.ReadString('Sensor '+inttostr(i),'MeasureUnit','No measure unit');
               Sensors[i].StateRequest:=SensorData.ReadString('Sensor '+inttostr(i),'StateRequest','No state request command');
               Sensors[i].DataPlace:=strtoint(SensorData.ReadString('Sensor '+inttostr(i),'DataPlace','0'));
               Sensors[i].RequestFreq:=strtoint(SensorData.ReadString('Sensor '+inttostr(i),'RequestFreq','0'));
               Sensors[i].SensorNumber:=i;
               end;
          SensorData.Free;
     end
     else
         showmessage('Файл с данными датчиков не найден');

if(FileExists('SensorData.ini')) then
     begin
          ScriptData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'ScriptData.ini');
          ScriptsQ:=ScriptData.ReadInteger('Main','ScriptsQuantity',1);
          for i:=1 to ScriptsQ do
               with Scripts[i] do
               begin
                    ConditionQ:=ScriptData.ReadInteger('Script# '+inttostr(i),'ConditionQ',0);
                    ActionQ:=ScriptData.ReadInteger('Script# '+inttostr(i),'ActionQ',0);
                    Notificate:=ScriptData.ReadBool('Script# '+inttostr(i),'Notificate',False);
                    Disposable:=ScriptData.ReadBool('Script# '+inttostr(i),'Disposable',False);
                    Timing.ExactTime:=ScriptData.ReadBool('Script# '+inttostr(i),'ExactTime',False);
                    Timing.GapTime:=ScriptData.ReadBool('Script# '+inttostr(i),'GapTime',False);
                    Timing.Time1:=ScriptData.ReadString('Script# '+inttostr(i),'Time1','');
                    Timing.Time2:=ScriptData.ReadTime('Script# '+inttostr(i),'Time2',0);
                    Timing.Time3:=ScriptData.ReadTime('Script# '+inttostr(i),'Time3',0);
                    WeekDay:=ScriptData.ReadBool('Script# '+inttostr(i),'WeekDay',False);
                    for z:=1 to 7 do
                        Day[z]:=ScriptData.ReadBool('Script# '+inttostr(i),'Day '+inttostr(z)+' works',False);
                    for z:=1 to ConditionQ do
                        begin
                        Conditions[z].SensName:=ScriptData.ReadString('Script# '+inttostr(i),'Condition#'+inttostr(z)+' SensName',' ');
                        Conditions[z].Sign:=ScriptData.ReadString('Script# '+inttostr(i),'Condition#'+inttostr(z)+' Sign',' ');
                        Conditions[z].Value:=ScriptData.ReadInteger('Script# '+inttostr(i),'Condition#'+inttostr(z)+' Value',0);
                        end;
                    for z:=1 to ActionQ do
                        begin
                        Actions[z].DevName:=ScriptData.ReadString('Script# '+inttostr(i),'Action#'+inttostr(z)+' DevName',' ');
                        Actions[z].ToDo:=ScriptData.ReadString('Script# '+inttostr(i),'Action#'+inttostr(z)+' ToDo',' ');
                        end;

               end;
     ScriptData.Free;
end;

if(FileExists('botData.ini')) then
     begin
          botData:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'botData.ini');
          botQ:=SensorData.ReadInteger('Main','botQuantity',1);
          for i:=1 to botQ do
          begin
               bot[i].token:=botData.ReadString('bot '+inttostr(i), 'token','no token');
               bot[i].subscribedQ:=botData.readInteger('bot '+inttostr(i),'subscribedQ',0);
               for z:=1 to bot[i].subscribedQ do
                   begin
                   bot[i].subscribed[z]:=botData.readString('bot '+inttostr(i), 'subscriber '+inttostr(z),' ');
                   end;
          end;
          botData.Free;
     end
     else
         showmessage('Файл с данными ботов не найден.');

end;

//поставить таймеры
procedure settimers;
begin
form1.timer1.interval:=Sensors[1].RequestFreq;
form1.timer2.interval:=Sensors[2].RequestFreq;
form1.timer3.interval:=Sensors[3].RequestFreq;
form1.timer4.interval:=Sensors[4].RequestFreq;
form1.timer5.interval:=Sensors[5].RequestFreq;
form1.timer6.interval:=Sensors[6].RequestFreq;
form1.timer7.interval:=Sensors[7].RequestFreq;
form1.timer8.interval:=Sensors[8].RequestFreq;
form1.timer9.interval:=Sensors[9].RequestFreq;
form1.timer10.interval:=Sensors[10].RequestFreq;
form1.timer11.interval:=Sensors[11].RequestFreq;
form1.timer12.interval:=Sensors[12].RequestFreq;
form1.timer13.interval:=Sensors[13].RequestFreq;
form1.timer14.interval:=Sensors[14].RequestFreq;
form1.timer15.interval:=Sensors[15].RequestFreq;
form1.timer16.interval:=Sensors[16].RequestFreq;
form1.timer17.interval:=Sensors[17].RequestFreq;
form1.timer18.interval:=Sensors[18].RequestFreq;
form1.timer19.interval:=Sensors[19].RequestFreq;
form1.timer20.interval:=Sensors[20].RequestFreq;
form1.timer21.interval:=Sensors[21].RequestFreq;
form1.timer22.interval:=Sensors[22].RequestFreq;
form1.timer23.interval:=Sensors[23].RequestFreq;
form1.timer24.interval:=Sensors[24].RequestFreq;
form1.timer25.interval:=Sensors[25].RequestFreq;
form1.timer26.interval:=Sensors[26].RequestFreq;
form1.timer27.interval:=Sensors[27].RequestFreq;
form1.timer28.interval:=Sensors[28].RequestFreq;
form1.timer29.interval:=Sensors[29].RequestFreq;
form1.timer30.interval:=Sensors[30].RequestFreq;
form1.timer31.interval:=Sensors[31].RequestFreq;
form1.timer32.interval:=Sensors[32].RequestFreq;

end;

//pp - memo4, pt - memo5
procedure pp(a:string);
begin
form1.memo4.lines.add(a);
end;
procedure pt(a:string);
begin
form1.memo5.Lines.add(a);
end;





//-----------------------------------------------------------------------ГЛАВНАЯ

//обновление списка состояния устройств
procedure refreshdevicestatelist;
var i:integer;
begin
with Form1.DeviceState do
begin
     RowCount:=DevicesQ+1;
     for i:=1 to RowCount-1 do
     begin
          cells[0,i]:=inttostr(Devices[i].DeviceNumber);
          cells[1,i]:=Devices[i].Name;
          cells[2,i]:=BoolToStr(Devices[i].PowerState, 'Включено','Выключено');
     end;
      ClientHeight := DefaultRowHeight * RowCount + 20;
end;

end;

//обновление списка датчиков
procedure refreshsensorstatelist;
var i:integer;
begin
with Form1.SensorState do
begin
     RowCount:=SensorsQ+1;
     for i:=1 to RowCount-1 do
     begin
          cells[0,i]:=inttostr(Sensors[i].SensorNumber);
          cells[1,i]:=Sensors[i].Name;
          cells[2,i]:=inttostr(Sensors[i].StateInt)+' '+Sensors[i].MeasureUnit;
     end;
     ClientHeight := DefaultRowHeight * RowCount + 20;
end;

end;




//----------------------------------------------------------УСТРОЙСТВА И ДАТЧИКИ

//обновление списка устройств
procedure refreshdevicelist;
var i:integer;
begin
with Form1.DeviceList do
begin
     RowCount:=DevicesQ+1;
     for i:=1 to RowCount-1 do
     begin
          cells[0,i]:=inttostr(Devices[i].DeviceNumber);
          cells[1,i]:=Devices[i].Name;
          cells[2,i]:=Devices[i].TurnOn;
          cells[3,i]:=Devices[i].TurnOff;
          cells[4,i]:=Devices[i].StateRequest;
     end;
      ClientHeight := DefaultRowHeight * RowCount + 5;
end;

end;

//обновление списка датчиков
procedure refreshsensorlist;
var i:integer;
begin
with Form1.SensorList do
begin
     RowCount:=SensorsQ+1;
     for i:=1 to RowCount-1 do
     begin
          cells[0,i]:=inttostr(Sensors[i].SensorNumber);
          cells[1,i]:=Sensors[i].Name;
          cells[2,i]:=Sensors[i].MeasureUnit;
          cells[3,i]:=Sensors[i].StateRequest;
          cells[4,i]:=inttostr(Sensors[i].DataPlace);
          cells[5,i]:=inttostr(Sensors[i].RequestFreq);
     end;
      ClientHeight := DefaultRowHeight * RowCount + 5;
end;

end;

//удаление устройства
procedure deletedevice(a:integer);
var
   i:integer;
begin
     for i:=a to DevicesQ-1 do
     Devices[i]:=Devices[i+1];
     dec(DevicesQ);
     refreshdevicelist;
     refreshdevicestatelist;
end;

//удаление датчика
procedure deletesensor(a:integer);
var
   i:integer;
begin
     for i:=a to SensorsQ-1 do
     Sensors[i]:=Sensors[i+1];
     dec(SensorsQ);
     refreshsensorlist;
     refreshsensorstatelist;
end;

//опросить датчик #a
procedure sensor_request(a:integer);
var i,z: integer;
    statetemp: string;
begin

for i:=1 to SensorsQ do
if Sensors[i].SensorNumber=a then
begin
        with sensors[i] do
        begin
        state:=command(staterequest);
        statetemp:=state;
        delete(statetemp, 1, pos('(',statetemp)-1);
        delete(statetemp,pos(';',statetemp),1);
        statetemp:=StringReplace(statetemp,'(',',',[]);
        statetemp:=StringReplace(statetemp,')',',',[]);
        for z:=1 to DataPlace do
            delete(statetemp,1,pos(',',statetemp));
        delete(statetemp,pos(',',statetemp),100);
        StateInt:=strtoint(statetemp);
        end;
end;
   { else
        then
           begin
           showmessage('Датчик с таким номером не найден');
           exit;
           end;  }

end;

//опросить устройство #a
procedure device_request(a:integer);
var i,z: integer;
    statetemp: string;
begin
for i:=1 to DevicesQ do
if Devices[i].DeviceNumber=a then
begin
        with Devices[i] do
        begin
        state:=command(staterequest);
        statetemp:=state;
        delete(statetemp, 1, pos('(',statetemp)-1);
        delete(statetemp,pos(';',statetemp),1);
        statetemp:=StringReplace(statetemp,'(',',',[]);
        statetemp:=StringReplace(statetemp,')',',',[]);
        for z:=1 to 3 do
            delete(statetemp,1,pos(',',statetemp));
        delete(statetemp,pos(',',statetemp),100);
        if strtoint(statetemp)=0
        then
            PowerState:=false;
        if strtoint(statetemp)=1
        then
            PowerState:=true;
        end;
end;
{for i:=1 to DevicesQ do
    if Devices[i].DeviceNumber=a
    then
        Devices[i].State:=command(Devices[i].StateRequest)
    else
        if i=DevicesQ
        then
           begin
           showmessage('Устройство с таким номером не найдено');
           exit;
           end; }
end;

//опросить ВСЕ датчики
procedure allsensor_request;
var i:integer;
begin
for i:=1 to SensorsQ do
    sensor_request(i);
refreshsensorstatelist;
end;

//опросить ВСЕ устройства
procedure alldevice_request;
var i:integer;
begin
for i:=1 to DevicesQ do
    device_request(i);
refreshdevicestatelist;
end;

//устройство вкл/выкл
procedure device_click(a:integer);
begin

with Devices[a] do
begin
if PowerState=false
then
     command(TurnOn)
else
     command(TurnOff);
device_request(a);
end;

refreshdevicestatelist;
end;

//включить устройство
procedure TurnOnDevice(a:integer);
begin
command(Devices[a].TurnOn);
end;

//выключить устройство
procedure TurnOffDevice(a:integer);
begin
command(Devices[a].TurnOff);
end;




//----------------------------------------------------------------------СЦЕНАРИИ

//обновить список сценариев для выбора
procedure refreshscripts;
var i:integer;
begin
form1.combobox1.items.clear;
form1.combobox1.text:='№';
for i:=1 to ScriptsQ do
form1.combobox1.items.add(inttostr(i));
end;

//вывод скрипта на показ
procedure showscript;
var i,z,y:integer;
begin
z:=strtoint(form1.combobox1.text);

currentscript:=z;
//вывод условий
with Form1.ConditionGrid do
begin
RowCount:=Scripts[z].ConditionQ+1;
for i:=1 to RowCount-1 do
     with Scripts[z].Conditions[i] do
     begin
          cells[0,i]:=inttostr(i);
          cells[1,i]:=SensName;
          cells[2,i]:=Sign;
          cells[3,i]:=inttostr(value);
     end;
end;
{form5.DeleteCondBox.Clear;
for i:=1 to Scripts[ScriptsQ+1].ConditionQ do
    form5.DeleteCondBox.Items.Add(inttostr(i));
form5.DeleteCondBox.Text:=('Удалить условие №');}

//вывод действий
with Form1.ActionGrid do
begin
     RowCount:=Scripts[z].ActionQ+1;
for i:=1 to RowCount-1 do
     with Scripts[z].Actions[i] do
     begin
          cells[0,i]:=inttostr(i);
          cells[1,i]:=DevName;
          cells[2,i]:=ToDo;
     end;
end;
//вывод параметров
with Form1.SettingsGrid do
with Scripts[z] do
begin
y:=1;
clear;
     RowCount:=15;

if Timing.ExactTime
   then begin
        cells[0,y]:='Работает в точное время';
        cells[1,y]:='Да';
        inc(y);
        cells[0,y]:='Время запуска';
        cells[1,y]:=Timing.Time1;
        inc(y);
        end
   else begin
        cells[0,y]:='Работает в точное время';
        cells[1,y]:='Нет';
        inc(y);
        end;

if Timing.GapTime
   then begin
        cells[0,y]:='Работает в промежутке';
        cells[1,y]:='Да';
        inc(y);
        cells[0,y]:='Начало промежутка';
        cells[1,y]:=formatdatetime('hh:mm',Timing.Time2);
        inc(y);
        cells[0,y]:='Конец промежутка';
        cells[1,y]:=formatdatetime('hh:mm',Timing.Time3);
        inc(y);
        end
   else begin
        cells[0,y]:='Работает в промежутке';
        cells[1,y]:='Нет';
        inc(y);
        end;

if Notificate
   then begin
        cells[0,y]:='Уведомлять';
        cells[1,y]:='Да';
        inc(y);
        end
   else begin
        cells[0,y]:='Уведомлять';
        cells[1,y]:='Нет';
        inc(y);
        end;

if Disposable
   then begin
        cells[0,y]:='Одноразовый';
        cells[1,y]:='Да';
        inc(y);
        end
   else begin
        cells[0,y]:='Одноразовый';
        cells[1,y]:='Нет';
        inc(y);
        end;

if WeekDay
   then begin
        cells[0,y]:='Зависит от дня недели';
        cells[1,y]:='Да';
        inc(y);
        for i:=1 to 7 do
            begin
            if Day[i] then
               case i of
                    1:   begin cells[0,y]:='Понедельник'; {cells[1,y]:='Да';} inc(y); end;
                    2:   begin cells[0,y]:='Вторник'; {cells[1,y]:='Да';} inc(y); end;
                    3:   begin cells[0,y]:='Среда'; {cells[1,y]:='Да';} inc(y); end;
                    4:   begin cells[0,y]:='Четверг'; {cells[1,y]:='Да';} inc(y); end;
                    5:   begin cells[0,y]:='Пятница'; {cells[1,y]:='Да';} inc(y); end;
                    6:   begin cells[0,y]:='Суббота'; {cells[1,y]:='Да';} inc(y); end;
                    7:   begin cells[0,y]:='Воскресенье'; {cells[1,y]:='Да';} inc(y); end;
                    end;
            end;
            end
   else begin
        cells[0,y]:='Зависит от дня недели';
        cells[1,y]:='Нет';
        inc(y);
        end;
{form5.DeleteActBox.Clear;
for i:=1 to Scripts[ScriptsQ+1].ActionQ do
    form5.DeleteActBox.Items.Add(inttostr(i));
form5.DeleteActBox.Text:=('Удалить действие №');}
end;

form1.label7.Caption:='Сценарий # '+inttostr(z);
end;

//удаление сценария
procedure deletescript(a:integer);
var i: integer;
begin
for i:=a to ScriptsQ-1 do
Scripts[i]:=Scripts[i+1];
Scripts[i].ActionQ:=0;
Scripts[i].ConditionQ:=0;
dec(ScriptsQ);
refreshscripts;
end;

//выполнение скрипта
procedure runscript(a:integer);
var i,z:integer;
begin
with Scripts[a] do
begin
//ПРОВЕРКА НА ДЕНЬ НЕДЕЛИ
if WeekDay then
     for i:=1 to 7 do
         if Day[i] then
              if DayOftheWeek(Now)<>i then {exit;} begin pt('Script#'+inttostr(a)+'. Не тот день.'); exit; end;

//ПРОВЕРКА НА ВРЕМЯ - точное
if Timing.ExactTime then
     if Timing.Time1<>formatdatetime('hh:mm',now) then {exit;} begin pt('Script#'+inttostr(a)+'. Время еще не пришло.'); exit; end;

//ПРОВЕРКА НА ВРЕМЯ - промежуток
if Timing.GapTime then
     if not ((comparetime(Time, Timing.Time2)=1) and (comparetime(Time,Timing.Time3)=-1)) then {exit;} begin pt('Script#'+inttostr(a)+'. Не тот промежуток.'); exit; end;

//ПРОВЕРКА УСЛОВИЙ
for i:=1 to ConditionQ do
begin
z:=sensnametonumber(Conditions[i].SensName);

pt('Script#'+inttostr(a)+'. Cond#'+inttostr(i)+'Нынешний statint:'+inttostr(Sensors[z].StateInt));
pt('Sign: "'+conditions[i].sign+'"');
pt('Value = '+inttostr(Conditions[i].value));

case Conditions[i].Sign of
     '<':  {begin pt(booltostr(Sensors[z].StateInt < Conditions[i].value,'Датчик меньше условия ','Датчик не меньше условия'));}
                 if not (Sensors[z].StateInt < Conditions[i].value)=true then
                      begin pt('Script#'+inttostr(a)+'.не <');
                      exit; //begin pt('Script#'+inttostr(a)+'.не <'); exit; end; end;
                      end;
     '>':  {begin pt(booltostr(Sensors[z].StateInt > Conditions[i].value,'Датчик больше условия ','Датчик не больше условия'));}
                 if not (Sensors[z].StateInt > Conditions[i].value)=true then
                    begin pt('Script#'+inttostr(a)+'.не >');
                    exit;
                    end; //end;

     '=':  {begin pt(booltostr(Sensors[z].StateInt = Conditions[i].value,'Датчик равен условию ','Датчик не равен условию'));}
                 if not (Sensors[z].StateInt = Conditions[i].value)=true then
                    begin pt('Script#'+inttostr(a)+'.не =');
                    exit;
                    end;// end;
     '<>': if not (Sensors[z].StateInt <> Conditions[i].value)=true then
              begin
              pt('Script#'+inttostr(a)+'.не <>');
              exit;
              end;

     '<=': {begin pt(booltostr(Sensors[z].StateInt <= Conditions[i].value,'FOKINGTRUE','FOKINGFALSE')); }
           if not (Sensors[z].StateInt <= Conditions[i].value)=true
           then
           begin pt('Script#'+inttostr(a)+'.не <=');
           exit;
           end;// end;

     '>=': if not (Sensors[z].StateInt >= Conditions[i].value)=true then
           begin pt('Script#'+inttostr(a)+'.не >=');
           exit;
           end;
end;
end;

//ВЫПОЛНЕНИЕ ДЕЙСТВИЙ
pt('Script#'+inttostr(a)+'. Начал работу');
for i:=1 to ActionQ do
begin
z:=devnametonumber(Actions[i].DevName);
case Actions[i].ToDo of
     'Вкл' : begin TurnOnDevice(z);  pt('Script#'+inttostr(a)+' Device#'+inttostr(z)+' turned on.'); end;
     'Выкл': begin TurnOffDevice(z); pt('Script#'+inttostr(a)+' Device#'+inttostr(z)+' turned off.'); end;
end;
end;



//УДАЛИТЬ СКРИПТ, ЕСЛИ ОДНОРАЗОВЫЙ
if Disposable
   then begin deletescript(a); pt('Script#'+inttostr(a)+'. Was disposable, now deleted'); end;

//УВЕДОМИТЬ, ЕСЛИ НАДО
if Notificate then
           botSubsMSG(urlencode('Script №'+inttostr(a)+' успешно сработал.'));

//ИТОГ
pt('Script#'+inttostr(a)+'. Выполнен');
refreshdevicestatelist;
form1.memo5.lines.add(datetostr(Date)+' '+timetostr(Time));
end;
end;




//---------------------------------------------------------------------------БОТ

//тест текст в мемотест
procedure pb(text:string);
begin
form1.memoTest.lines.add(text);
end;

//команда боту
procedure botsend(botNumber:integer; command:string);
var
   jsObject: iSuperObject;
begin
    try
         tHTTP:=tIdHTTP.create;
         SSL:=tIdSSLIOHandlerSocketOpenSSL.Create;
         tHTTP.IOHandler:=SSL;

         jsObject:=SO(THTTP.Get(botUrl+bot[botNumber].token+'/'+command));

         if JsObject.B['ok']=True then
            ShowMessage('Команда "'+command+'" успешно отправлена');
  finally
    { tIdHTTP.Free;
     tIdSSLIOHandlerSocketOpenSSL.free;}
        tHttp.Free;
        ssl.free;
     end;
end;

//сообщение от бота
procedure botMSG(botNumber:integer; chat: string; message: string);
var
   mHTTP:TIdHTTP;
   mSSL:TIdSSLIOHandlerSocketOpenSSL;
begin
     try
     mHTTP:=tIdHTTP.create;
     mSSL:=tIdSSLIOHandlerSocketOpenSSL.Create;
     mHTTP.IOHandler:=mSSL;

     mHTTP.Get(botURL+bot[botNumber].token+'/sendmessage?chat_id='+chat+'&text='+message+'&parse_mode=html&remove_keyboard=true');

     finally
           {tidhttp.free;
           tIdSSLIOHandlerSocketOpenSSL.free;}
     mHTTP.free;
     mSSL.free;
     end;
end;

//картинка от бота
procedure botPhoto(botNumber:integer; chat: string; photo: string; message: string);
var
   mHTTP:tIdHttp;
   mSSL:TIdSSLIOHandlerSocketOpenSSL;
begin
     try
     mHTTP:=tIdHttp.create;
     mSSL:=tIdSSLIOHandlerSocketOpenSSL.Create;
     mHTTP.IOHandler:=mSSL;

     mHTTP.Get(botURL+bot[botNumber].token+'/sendPhoto?chat_id='+chat+'&photo='+photo+'&caption='+message+'&parse_mode=html');

     finally
     mHTTP.free;
     mSSL.free;
     end;
end;

//сообщение от бота с клавиатурой
procedure botMsgK(botNumber:integer; chat: string; message: string; keyboardString:string);
var
   mHTTP:TIdHTTP;
   mSSL:TIdSSLIOHandlerSocketOpenSSL;
begin
     try
     mHTTP:=tIdHTTP.create;
     mSSL:=tIdSSLIOHandlerSocketOpenSSL.Create;
     mHTTP.IOHandler:=mSSL;

     mHTTP.Get(botURL+bot[botNumber].token+'/sendmessage?chat_id='+chat+'&text='+message+'&parse_mode=html'+keyboardString);

     finally
    { tidhttp.free;
     tIdSSLIOHandlerSocketOpenSSL.free;  }
     mHTTP.free;
     mSSL.free;
     end;
end;

//большое сообщение от бота
procedure botBIGMSG(botNumber:integer; chat: string; message:string);
var
   mHTTP:TIdHTTP;
   mSSL:TIdSSLIOHandlerSocketOpenSSL;
begin
     try
     mHTTP:=tIdHTTP.create;
     mSSL:=tIdSSLIOHandlerSocketOpenSSL.Create;
     mHTTP.IOHandler:=SSL;

     THTTP.Get(botURL+bot[botNumber].token+'/sendmessage?chat_id='+chat+'&text='+message);

     finally
     {tidhttp.free;
           tIdSSLIOHandlerSocketOpenSSL.free;}
     mHTTP.free;
     mSSL.free;
     end;
end;

//вывод интерфейса
procedure botInterface(botnumber:integer;chat:string); //Доработать
{var
   mHTTP:TIdHTTP;
   mSSL:TIdSSLIOHandlerSocketOpenSSL;
   botMessage:string;}

begin
{botMessage:='Бип.Боп.Что будем делать?';
keyboardInterface:='&reply_markup={"inline_keyboard":[[{"text":'+urlencode('"Список устройств"')+
                                                                                    ',"callback_data":"/deviceList"},{"text":'+urlencode('"Список датчиков"')+
                                                                                    ',"callback_data":"/sensorList"},{"text":'+urlencode('"Состояние устройств"')+
                                                                                    ',"callback_data":"/deviceStat"},{"text":'+urlencode('"Состояние датчиков"')+
                                                                                    ',"callback_data":"/sensorStat"},{"text":'+urlencode('"Щелкнуть устройство..."')+
                                                                                    ',"callback_data":"/deviceclick"},{"text":'+urlencode('"Удалить устройство..."')+
                                                                                    ',"callback_data":"/deviceDelete"},{"text":'+urlencode('"Удалить датчик..."')+
                                                                                    ',"callback_data":"/sensorDelete"},{"text":'+urlencode('"Подписаться на уведомления"')+
                                                                                    ',"callback_data":"/subscribe"},{"text":'+urlencode('"Отписаться от уведомлений"')+
                                                                                    ',"callback_data":"/unsubscribe"},{"text":'+urlencode('"Список команд"')+
                                                                                    ',"callback_data":"/help"}]],"one_time_keyboard":true}';
try
mHTTP:=tIdHTTP.create;
mSSL:=tIdSSLIOHandlerSocketOpenSSL.Create;
mHTTP.IOHandler:=mSSL;

mHTTP.Get(botURL+bot[botNumber].token+'/sendmessage?chat_id='+chat+'&text='+urlencode(botMessage)+'&parse_mode=html'+keyboardInterface);

finally
tidhttp.free;
           tIdSSLIOHandlerSocketOpenSSL.free;
mHTTP.free;
mSSL.free;
end;   }
   end;

//сообщение всем подписчикам
procedure botSubsMSG(text:string);
var i,z:integer;
   begin
   for i:=1 to botQ do
       for z:=1 to bot[i].subscribedQ do
           botmsg(i,bot[i].subscribed[z],text);
   end;

//добавить в подписчики
procedure botSub(botNumber:integer; chatID: string);
var i:integer;
begin
with bot[botNumber] do
begin
if subscribedQ<>0
then
  for i:=1 to subscribedQ do
    begin
    if subscribed[i]=chatID
       then
           begin
           botMSG(botNumber,chatID,urlencode('Ты уже подписан на мои уведомления :)'));
           botInterface(botNumber,chatID);
           exit;
           end
       else
           begin
           subscribed[subscribedQ+1]:=chatID;
           inc(subscribedQ);
           botMSG(botNumber,chatID,urlencode('Ты успешно подписался на мои уведомления :)'));
           botInterface(botNumber,chatID);
           end;
    end
else
  subscribed[1]:=chatID;
  inc(subscribedQ);
  botMSG(botNumber,chatID,urlencode('Ты успешно подписался на мои уведомления :)'));
  botInterface(botNumber,chatID);

end;
end;

//удалить из подписчиков
procedure botUnsub(botNumber:integer; chatID:string);
var a,i:integer;
begin
with bot[botNumber] do
begin


if subscribedQ=0 then
   begin
   botmsg(botnumber,chatID,urlencode('Еще нет ни одного подписчика :('));
   exit;
   end;

//поиск подписчика
for i:=1 to subscribedQ do
    begin
    if subscribed[i]=chatID then
       begin
       a:=i;
       break;
    end
    else
    begin
       botMSG(botNumber,chatID,urlencode('Ты еще не подписчик, чтобы отписываться :)'));
       exit;
    end;
    end;

for i:=a to subscribedQ-1 do
subscribed[i]:=subscribed[i+1];
dec(subscribedQ);
botMSG(botNumber,chatID,urlencode('Ты успешно отписался от моих уведомлений :)'));

end;
end;

//показать список скриптов
{procedure botScriptList(botnumber:integer; chatID: string);
   begin

   end;}

//обновление бота
procedure botUpdate(botNumber:integer);
var
  RHttp:TIdHTTP;
  RSSL:TIdSSLIOHandlerSocketOpenSSL;
  jsObject1, jsObject2: ISuperObject;
  request, chatID:string;
  i,z: integer;
begin
try
    RHttp:=TIdHTTP.Create;
    RSSL:=TIdSSLIOHandlerSocketOpenSSL.Create;
    RHttp.IOHandler:=RSSL;

    // pb(botUrl+bot[botNumber].token+'/getUpdates?offset='+IntToStr(Offset)+'&timeout=30');

     JsObject1:=SO(RHTTP.Get(botUrl+bot[botNumber].token+'/getUpdates?offset='+IntToStr(Offset)+'&timeout=30')); //надо реализовать многопоточность
     JsObject2:= JsObject1.A['result'].N[0];
     Offset:=JsObject2.i['update_id'] + 1;



     if offset<>1 then
        begin
        if jsobject2.s['message.text']<>'' then
           begin
           form1.memoBot.lines.add('['+formatdatetime('dd/mm/yyyy hh:mm',now)+'] '+
                                   jsObject2.s['message.from.username']+' '+
                                   jsObject2.s['message.from.id']+' '+
                                   jsObject2.s['message.text']);

           request:=JsObject2.s['message.text'];
           chatID:=jsObject2.s['message.from.id'];
           request:=UTF8ToAnsi(request);



           case request of

           'Привет!': if chatID=inttostr(166186109) then botmsg(botNumber,chatID,urlencode('Привет, пап! :)'));

           'Hello': botMSG(botNumber, chatID, 'Hello!');
           '/start':
                 begin
                    botmsg(botNumber,chatID, urlencode('Привет!')+br+urlencode('Список всех команд можешь увидеть введя /help!')+br+urlencode('Наслаждайся!'));
                    botInterface(botNumber,chatID);
                    end;

           '/help':
                 begin
                 messageString:=urlencode('<b>Комманды для Sens"o"master:</b>')+br+br+

                 urlencode('<b>УСТРОЙСТВА</b>')+br+
                 urlencode('/devicelist - показать список устройств и их параметров')+br+
                 urlencode('/devicestat - показать состояние всех устройств')+br+
                 urlencode('/deviceclick - щелкнуть устройство')+br+
                 urlencode('/devicedelete - удалить одно из устройств')+br+
                 br+
                 urlencode('<b>ДАТЧИКИ</b>')+br+
                 urlencode('/sensorlist - показать список датчиков и их параметров')+br+
                 urlencode('/sensorstat - показать состояние всех датчиков')+br+
                 urlencode('/sensordelete - удалить один из датчиков')+br+
                 br+
                 urlencode('<b>СЦЕНАРИИ</b>')+br+
                 urlencode('/scriptlist - показать список всех сценариев')+br+
                 urlencode('/scriptrun - выполнить один из сценариев, вне зависимости от его условий')+br+
                 br+
                 urlencode('<b>ПОДПИСКА</b>')+br+
                 urlencode('/subscribe - подписаться на уведомления Sens"o"Master')+br+
                 urlencode('/unsubscribe - отписаться от уведомлений Sens"o"Master')+br+
                 br+
                 urlencode('/help - показать все команды');

                 botMsg(botNumber,chatID,messageString);
                 messageString:='';
                 botInterface(botNumber,chatID);
                 end;
           '/subscribe': begin botSUB(botNumber, chatID); savedata; end;
           '/unsubscribe': begin botUnsub(botNumber, chatID); savedata; end;


           '/sensorlist':
                 begin
                 for i:=1 to SensorsQ do
                     messageString:=messageString+br+'<b>'+inttostr(sensors[i].SensorNumber)+urlencode('. '+sensors[i].Name)+'</b>'+br+urlencode(
                                                                                               'Запрос: ')+sensors[i].StateRequest+br+urlencode(
                                                                                               'Позиция данных: ')+inttostr(sensors[i].dataPlace)+br+urlencode(
                                                                                               'Единица измерения: ')+urlencode(sensors[i].measureUnit)+br+urlencode(
                                                                                               'Частота запроса (мс): ')+inttostr(sensors[i].requestFreq)+br;
                 botMSG(botNumber,chatID,messageString);
                 messageString:='';
                 botInterface(botNumber,chatID);
                 end;
           '/sensorstat':
                 begin
                 for i:=1 to SensorsQ do
                     messageString:=messageString+br+'<b>'+inttostr(sensors[i].SensorNumber)+urlencode('. '+sensors[i].Name)+'</b>'+br+urlencode('Состояние: ')+inttostr(sensors[i].StateInt)+' '+urlencode(sensors[i].MeasureUnit);
                 botMSG(botNumber,ChatID,messageString);
                 messageString:='';
                 botInterface(botNumber,chatID);
                 end;
           '/sensordelete':
                 begin
                 deleteSen:=true;

                 keyboardString:='&reply_markup={"keyboard":[';
                 for i:=1 to SensorsQ do
                     keyboardString:=keyboardString+'["'+urlencode(Sensors[i].Name)+'"],';
                 delete(keyboardString, length(keyboardString), 1);
                 keyboardString:=keyboardString+'],"one_time_keyboard":true}';

                 botMsgK(botNumber,chatID,urlencode('Выберите датчик для удаления:'),keyboardString);

                 end;


           '/devicelist':
                 begin
                 for i:=1 to DevicesQ do
                     messageString:=messageString+br+'<b>'+inttostr(devices[i].deviceNumber)+urlencode('. '+devices[i].name)+'</b>'+br+urlencode(
                                                                                               'Включение: ')+devices[i].TurnOn+br+urlencode(
                                                                                               'Выключение: ')+devices[i].TurnOff+br+urlencode(
                                                                                               'Запрос: ')+devices[i].StateRequest+br;
                 botMSG(botNumber,chatID,messageString);
                 messageString:='';
                 botInterface(botNumber,chatID);
                 end;
           '/devicestat':
                 begin
                 for i:=1 to DevicesQ do
                     messageString:=messageString+br+'<b>'+inttostr(devices[i].deviceNumber)+urlencode('. '+devices[i].name)+'</b>'+br+urlencode('Состояние: ')+BoolToStr(Devices[i].PowerState, urlencode('Вкл'),urlencode('Выкл'));
                 botMSG(botNumber,chatID,messageString);
                     messageString:='';
                     botInterface(botNumber,chatID);
                 end;
           '/deviceclick':
                 begin
                 clickDev:=true;

                 keyboardString:='&reply_markup={"keyboard":[';
                 for i:=1 to DevicesQ do
                     keyboardString:=keyboardString+'["'+urlencode(devices[i].Name)+'"],';
                 delete(keyboardString, length(keyboardString), 1);
                 keyboardString:=keyboardString+'],"one_time_keyboard":true}';

                 botMsgK(botNumber,chatID,urlencode('Выберите устройство для переключения состояния:'),keyboardString);
                 end;
           '/devicedelete':
                 begin
                 deleteDev:=true;

                 keyboardString:='&reply_markup={"keyboard":[';
                 for i:=1 to DevicesQ do
                     keyboardString:=keyboardString+'["'+urlencode(devices[i].Name)+'"],';
                 delete(keyboardString, length(keyboardString), 1);
                 keyboardString:=keyboardString+'],"one_time_keyboard":true}';

                 botMsgK(botNumber,chatID,urlencode('Выберите устройство для удаления:'),keyboardString);


                 //альтернатива
                 {RHttp:=TIdHTTP.Create;
                 RSSL:=TIdSSLIOHandlerSocketOpenSSL.Create;
                 RHttp.IOHandler:=RSSL;

                 offset:=0;
                 JsObject1:=SO(RHTTP.Get(botUrl+bot[botNumber].token+'/getUpdates?offset='+IntToStr(Offset)+'&timeout=30')); //надо реализовать многопоточность
                 jsObject3:=JsObject1.A['result'].N[0];
                 Offset:=JsObject3.i['update_id'] + 1;

                 rhttp.free;
                 rssl.free;}
                 {
                 if offset<>1 then
                    if jsobject3.s['message.text']<>'' then
                         begin
                         showmessage(jsObject3.S['message.text']);
                         deletedevice(devnametonumber(jsObject3.S['message.text']));
                         botmsg(botNumber,chatID,'Device "'+jsObject3.s['message.text']+' was deleted.');
                         end;}
                 end;
           '/deviceedit':
                 begin
                 editDev:=true;

                 keyboardString:='&reply_markup={"keyboard":[';
                 for i:=1 to DevicesQ do
                     keyboardString:=keyboardString+'["'+urlencode(devices[i].Name)+'"],';
                 delete(keyboardString, length(keyboardString), 1);
                 keyboardString:=keyboardString+'],"one_time_keyboard":true}';

                 botMsgK(botNumber, chatID,urlencode('Выберите устройство для редактирования:'),keyboardString);
                 end;


           '/scriptlist':
                 begin
                 for i:=1 to scriptsQ do
                     begin
                     messageString:=messagestring+br+'<b>'+urlencode('Сценарий №')+inttostr(i)+'</b>';


                     with scripts[i] do
                          begin

                          messageString:=messagestring+br+urlencode('🌡<b>УСЛОВИЯ</b>');
                          for z:=1 to conditionQ do
                              with conditions[z] do
                                   messageString:=messageString+br+'<b>'+inttostr(z)+'</b>'+urlencode('. '+sensName)+urlencode(sign)+inttostr(value);
                          if conditionQ=0 then  messageString:=messageString+br+urlencode('Действий нет.');


                          messageString:=messagestring+br+urlencode('⚙️<b>ДЕЙСТВИЯ</b>');
                          for z:=1 to actionQ do
                              with actions[z] do
                                   messageString:=messageString+br+'<b>'+inttostr(z)+'</b>'+urlencode('. '+devName+'-'+toDo);
                          if actionQ=0 then  messageString:=messageString+br+urlencode('Действий нет.');

                          messageString:=messagestring+br+urlencode('💡<b>ПРОЧЕЕ</b>');
                          with timing do
                               begin

                               if exactTime
                                  then
                                      messageString:=messageString+br+urlencode('<b>Срабатывает в конкретное время:</b> да, в ')+Time1
                                  else
                                      messageString:=messageString+br+urlencode('<b>Срабатывает в конкретное время:</b> нет.');

                               if gapTime
                                  then
                                      messageString:=messageString+br+urlencode('<b>Срабатывает в промежутке:</b> да, между ')+formatdatetime('hh:mm',Timing.Time2)+urlencode(' и ')+formatdatetime('hh:mm',Timing.Time3)
                                  else
                                      messageString:=messageString+br+urlencode('<b>Срабатывает в промежутке:</b> нет');
                               end;
                          if disposable
                             then
                                 messageString:=messageString+br+urlencode('<b>Одноразовый:</b> да')
                             else
                                 messageString:=messageString+br+urlencode('<b>Одноразовый:</b> нет');

                          if notificate
                             then
                                 messageString:=messageString+br+urlencode('<b>Уведомлять о выполнении:</b> да')
                             else
                                 messageString:=messageString+br+urlencode('<b>Уведомлять о выполнении:</b> нет');

                          if weekDay
                             then
                                 begin
                                 messageString:=messageString+br+urlencode('<b>Работает в определенные дни недели:</b> да.'+br+'<b>Рабочие дни:</b>');
                                 for z:=1 to 7 do
                                     if Day[z] then
                                     case i of
                                          1:   messageString:=messageString+br+urlencode('Понедельник ');
                                          2:   messageString:=messageString+br+urlencode('Вторник ');
                                          3:   messageString:=messageString+br+urlencode('Среда ');
                                          4:   messageString:=messageString+br+urlencode('Четверг ');
                                          5:   messageString:=messageString+br+urlencode('Пятница ');
                                          6:   messageString:=messageString+br+urlencode('Суббота ');
                                          7:   messageString:=messageString+br+urlencode('Воскресенье ');
                                     end;

                                 end
                             else
                                 messageString:=messageString+br+urlencode('<b>Работает в определенные дни недели:</b> нет');
                          end;
                     botMSG(botNumber,chatID,messageString);
                     messageString:=' ';
                     end;

                 end;
           '/scriptrun':
                 begin
                 scrRun:=true;

                 keyboardString:='&reply_markup={"keyboard":[';
                 for i:=1 to scriptsQ do
                     keyboardString:=keyboardString+'["'+inttostr(i)+'"],';
                 delete(keyboardString, length(keyboardString), 1);
                 keyboardString:=keyboardString+'],"one_time_keyboard":true}';
                 botMsgK(botNumber,chatID,urlencode('Выберите сценарий для запуска:'),keyboardString);
                 end;

           '/about':
                 begin
                 botMsg(botNumber,chatID,urlencode('SensOmaster 2019. Альберт Кенгерли. "Ирина-Фарм". Peace!'));
                 end;

           'kys':
             begin
             botMSG(botNumber, chatID, urlencode('“But in the end one needs more courage to live than to kill himself.― Albert Camus"'));
             botSubsMSG(urlencode('Убийца: ')+chatID);
             MyThread.Destroy;
             end;
//test
           'Hi': if chatID=inttostr(364112135) then botPhoto(botNumber, chatID, 'https://media2.giphy.com/media/wNyBmRPpxSzAY/giphy.gif?cid=790b76115cefce825272526645f9d6f1&rid=giphy.gif', urlencode('hi.'));

           else
             if ((deleteDev=false) and (deleteSen=false) and (clickDev=false) and (scrRun=false)) then
             botmsg(botnumber,chatID,urlencode('Моя твоя не понимать. Используй команды из /help!'));





           end;

        if scrRun=true then
           begin
           runScript(strtoint(request));
           botMsg(botNumber,chatID,urlencode('Сценарий №'+request+' успешно запущен.'));
           scrRun:=false;
           botInterface(botNumber,chatID);
           end;

        if deleteDev=true then
           for i:=1 to devicesQ do
            if request=devices[i].Name then
               begin
               botMsg(botNumber,chatID,urlencode('Устройство '+devices[i].name+' успешно удалено.'));
               deletedevice(devnametonumber(devices[i].name));
               deleteDev:=false;
               botInterface(botNumber,chatID);
               end;

         if deleteSen=true then
            for i:=1 to sensorsQ do
            if request=sensors[i].Name then
               begin
               botMsg(botNumber,chatID,urlencode('Датчик '+sensors[i].name+' успешно удален.'));
               deletesensor(sensnametonumber(devices[i].name));
               deleteSen:=false;
                botInterface(botNumber,chatID);
                savedata;
               end;

         if clickDev=true then
            for i:=1 to devicesQ do
            if request=devices[i].Name then
               begin
               device_click(devnametonumber(devices[i].name));
               if devices[i].PowerState=true then
                                              botMsg(botNumber,chatID,urlencode('Устройство '+devices[i].name+' успешно включено.'))
                                              else
                                              botMsg(botNumber,chatID,urlencode('Устройство '+devices[i].name+' успешно выключено.'));
               clickDev:=false;
                botInterface(botNumber,chatID);
                savedata;
               end;

         if editDev=true then
           for i:=1 to devicesQ do
           if request=devices[i].Name then
              begin
              botMsg(botNumber,chatID,'<b>'+inttostr(devices[i].deviceNumber)+' '+urlencode(devices[i].name)+'</b>'+br+urlencode(
                                                                                               'Включение: ')+devices[i].TurnOn+br+urlencode(
                                                                                               'Выключение: ')+devices[i].TurnOff+br+urlencode(
                                                                                               'Запрос: ')+devices[i].StateRequest);

              keyboardString:=urlencode('&reply_markup={"keyboard":[["Включение"],["Выключение"],["Запрос"]],"one_time_keyboard":true}');

              botMsgK(botNumber, chatID,'Выберите параметр для замены:',keyboardString);
              chooseSetDev:=true;
              editDev:=false;
              savedata;
              end;

         if chooseSetDev=true then
           case request of
           'Включение':

             ;
           'Выключение':
             ;
           'Запрос':
             ;

           end;







        end;
end;

finally
{
TIdHTTP.free;
TIdSSLIOHandlerSocketOpenSSL.free;}
RHttp.free;
rssl.free;

end;
end;








{                                   FRONT  END                                 }


//------------------------------------------------------------------------system

//СОБЫТИЕ Открытие программы
procedure TForm1.FormCreate(Sender: TObject);
begin
loaddata;
refreshdevicelist;
refreshsensorlist;
refreshdevicestatelist;
refreshsensorstatelist;
allsensor_request;
alldevice_request;
settimers;
refreshscripts;

end;

//СОБЫТИЕ Закрытие программы
procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
closeaction:=caFree;
savedata;
savelog;
end;

//СОБЫТИЕ Запуск сценариев
procedure TForm1.ScriptTimerTimer(Sender: TObject);
var i:integer;
begin
for i:=1 to ScriptsQ do
runscript(i);
end;

//СОБЫТИЕ Опрос всех датчиков
procedure TForm1.DevRequestTimer(Sender: TObject);
begin
  alldevice_request;
end;

//КНОПКА О программе
procedure TForm1.Button5Click(Sender: TObject);
begin
form10.Show;
end;


//------------------------------------------------------------------settingsPage

//добавление нового устройства
procedure TForm1.AddDeviceButtonClick(Sender: TObject);
begin
  Form2.Show;
end;

//добавление нового датчика
procedure TForm1.AddSensorButtonClick(Sender: TObject);
begin
  Form3.Show;
end;

//удалить устройство
procedure TForm1.DeleteDeviceButtonClick(Sender: TObject);
begin
  deletedevice(strtoint(Edit1.Text));
end;

//удалить датчик
procedure TForm1.DeleteSensorButtonClick(Sender: TObject);
begin
  deletesensor(strtoint(Edit1.Text));
end;

//редактирование массива Devices через таблицу
procedure TForm1.DeviceListEditingDone(Sender: TObject);
begin
DeviceList:=Sender as TStringGrid;
case DeviceList.Col of
     0: Devices[DeviceList.Row].DeviceNumber:=StrToInt(DeviceList.Cells[DeviceList.Col, DeviceList.Row]);
     1: Devices[DeviceList.Row].Name:=DeviceList.Cells[DeviceList.Col, DeviceList.Row];
     2: Devices[DeviceList.Row].TurnOn:=DeviceList.Cells[DeviceList.Col, DeviceList.Row];
     3: Devices[DeviceList.Row].TurnOff:=DeviceList.Cells[DeviceList.Col, DeviceList.Row];
     4: Devices[DeviceList.Row].StateRequest:=DeviceList.Cells[DeviceList.Col, DeviceList.Row]
  end;
end;

//редактирование массива Sensors через таблицу
procedure TForm1.SensorListEditingDone(Sender: TObject);
begin
SensorList:=Sender as TStringGrid;
case SensorList.Col of
     0: Sensors[SensorList.Row].SensorNumber:=StrToInt(SensorList.Cells[SensorList.Col, SensorList.Row]);
     1: Sensors[SensorList.Row].Name:=SensorList.Cells[SensorList.Col, SensorList.Row];
     2: Sensors[SensorList.Row].MeasureUnit:=SensorList.Cells[SensorList.Col, SensorList.Row];
     3: Sensors[SensorList.Row].StateRequest:=SensorList.Cells[SensorList.Col, SensorList.Row];
     4: Sensors[SensorList.Row].DataPlace:=strtoint(SensorList.Cells[SensorList.Col, SensorList.Row]);
     5: Sensors[SensorList.Row].RequestFreq:=strtoint(SensorList.Cells[SensorList.Col, SensorList.Row]);
  end;
settimers;
end;



//---------------------------------------------------------------------logicPage

//открытие логики
procedure TForm1.LogicPageShow(Sender: TObject);
begin
//refreshscripts;
end;

procedure TForm1.PageControlChange(Sender: TObject);
begin

end;

//добавление нового сценария
procedure TForm1.AddScriptButtonClick(Sender: TObject);
begin
form5.show;
end;

//выбрать скрипт
procedure TForm1.Button10Click(Sender: TObject);
begin
try
strtoint(combobox1.text);
except
begin
showmessage('Выберите сценарий для показа!');  //Было бы неплохо написать такую функцию для проверки полей для strtoint с вводом текста ошибки!
exit;
end;
end;
showscript;
form1.button7.visible:=true;
form1.button8.visible:=true;
form1.button9.visible:=true;
end;

//удалить скрипт
procedure TForm1.Button8Click(Sender: TObject);
begin
deletescript(currentscript);
refreshscripts;
form1.button7.visible:=false;
form1.button8.visible:=false;
form1.button9.visible:=false;
form1.ConditionGrid.clear;
form1.ActionGrid.clear;
form1.SettingsGrid.clear;
form1.Label7.Caption:=' ';
end;

//выполнить скрипт
procedure TForm1.Button7Click(Sender: TObject);
begin
  runscript(currentscript);
end;

//редактировать скрипт
procedure TForm1.Button9Click(Sender: TObject);
begin
form7refresh;
form7.show;
end;



//-----------------------------------------------------------------------botPage

//При открытии страницы
procedure TForm1.botPageEnter(Sender: TObject);
var i:integer;
begin
botNumber.Items.Clear;
for i:=1 to botQ do
botNumber.items.Add(inttostr(i));
end;

//включить бота
procedure TForm1.toggleBotClick(Sender: TObject);
begin
{if timerBotUpdate.Enabled=true then
   timerBotUpdate.Enabled:=false
else
   timerBotUpdate.Enabled:=true;}

if togglebot.enabled=true
then
   begin
   MyThread:=TMyThread.Create(False);
   MyThread.FreeOnTerminate:=true;
   end
else
   MyThread.Destroy;
end;

//КНОПКА отправить команду
procedure TForm1.buttonCommandClick(Sender: TObject);
begin
botsend(strtoint(botNumber.Text), editCommand.Text);
end;

//КНОПКА опрос бота
procedure TForm1.buttonUpdateClick(Sender: TObject);
begin
botupdate(strtoint(botNumber.text));
end;

//ПОТОК
procedure TMyThread.Execute;
var i:integer;
begin
while form1.toggleBot.Enabled=true do
for i:=1 to botQ do botUpdate(i);

end;

//ТАЙМЕР опрос бота
procedure TForm1.timerBotUpdateTimer(Sender: TObject);
var i:integer;
begin
for i:=1 to botQ do
botUpdate(i);
end;




//---------------------------------------------------------------------debugPage

//вывод устройства и датчики в memo
procedure TForm1.ShowDataButtonChange(Sender: TObject);
var
   i:integer;
begin
memo1.lines.add('Quantity devices='+inttostr(DevicesQ));
 for i:=1 to DevicesQ do
 begin
  Memo1.Lines.Add(inttostr(Devices[i].DeviceNumber));
  Memo1.Lines.Add(Devices[i].Name);
  Memo1.Lines.Add(Devices[i].TurnOn);
  Memo1.Lines.Add(Devices[i].TurnOff);
  Memo1.Lines.Add(Devices[i].StateRequest);
 end;

memo1.lines.add('Quantity sensors='+inttostr(SensorsQ));
for i:=1 to SensorsQ do
 begin
  Memo1.Lines.Add(inttostr(Sensors[i].SensorNumber));
  Memo1.Lines.Add(Sensors[i].Name);
  Memo1.Lines.Add(Sensors[i].MeasureUnit);
  Memo1.Lines.Add(Sensors[i].StateRequest);
  Memo1.Lines.Add(inttostr(Sensors[i].DataPlace));
  Memo1.Lines.Add(inttostr(Sensors[i].RequestFreq));
 end;
end;

//восстановление настроек
procedure TForm1.LoadDataButtonClick(Sender: TObject);
begin
loaddata;
end;

//сохранение настроек
procedure TForm1.SaveDataButtonClick(Sender: TObject);
begin
savedata;
form1.memo5.lines.SaveToFile(formatdatetime('hh-mm',Time)+'_scriptlog.txt');
 end;

//НАСТРОЙКИ обновить устройства и датчики
procedure TForm1.RefreshButtonClick(Sender: TObject);
begin
  refreshdevicelist;
  refreshsensorlist;
end;

//ГЛАВНАЯ обновить устройства и датчики
procedure TForm1.Button1Click(Sender: TObject);
begin
  refreshdevicestatelist;
  refreshsensorstatelist;
end;

//опросить датчик #edit2.text
procedure TForm1.Button2Click(Sender: TObject);
begin
  pp('начало');
  sensor_request(strtoint(edit2.text));
  pp(Sensors[strtoint(edit2.text)].State);
  pp('конец');
  refreshsensorstatelist;
end;

//опросить устройство #edit2.text
procedure TForm1.Button3Click(Sender: TObject);
begin
  pp('начало');
  device_request(strtoint(edit2.text));
  pp(Devices[strtoint(edit2.text)].State);
  pp('конец');
  refreshdevicestatelist;
end;

//клик устройство #edit2.text
procedure TForm1.Button6Click(Sender: TObject);
begin
device_click(strtoint(edit2.text));
end;

//вывести скрипты в memo4
procedure TForm1.Button4Click(Sender: TObject);
var i,z:integer;
begin
pp('Количество скриптов: '+inttostr(ScriptsQ));
for i:=1 to ScriptsQ do
    with Scripts[i] do
begin
    pp('Номер скрипта: '+inttostr(i));
    pp('Количество условий: '+inttostr(ConditionQ));
    pp('Количество действий: '+inttostr(ActionQ));
    pp('Условия');
    for z:=1 to ConditionQ do
        with Conditions[z] do
        begin
        pp('Условие# '+inttostr(z));
        pp(SensName+Sign+inttostr(value));
        end;
    pp('Действия');
    for z:=1 to ActionQ do
        with Actions[z] do
        begin
        pp('Действие# '+inttostr(z));
        pp(DevName+ToDo);
        end;
    pp('Сработка в определенное время: '+booltostr(Timing.ExactTime,'1','0'));
    pp('Сработка в промежутке: '+booltostr(Timing.GapTime,'1','0'));
    pp('Time 1: '+Timing.Time1);
    pp('Time 2: '+timetostr(Timing.Time2));
    pp('Time 3: '+timetostr(Timing.Time3));
    pp('Уведомления: '+booltostr(Notificate,'1','0'));
    pp('Одноразовость: '+booltostr(Disposable,'1','0'));
    for z:=1 to 7 do
    pp('День недели '+inttostr(z)+'. Работает: '+booltostr(Day[z],'1','0'));
    pp('----------------------------------------');
end;
end;

//cохранить лог
procedure TForm1.Button11Click(Sender: TObject);
begin
  savelog;
end;

//отправить команду terminal.text
procedure TForm1.RequestButtonClick(Sender: TObject);
begin
Form1.memo2.lines.add(command(terminal.text));
terminal.clear;
end;



//------------------------------------------------------------------------timers
procedure TForm1.Timer1Timer(Sender: TObject);
begin
     sensor_request(1);

refreshsensorstatelist; end;
procedure TForm1.Timer2Timer(Sender: TObject);
begin
     sensor_request(2);
refreshsensorstatelist; end;
procedure TForm1.Timer3Timer(Sender: TObject);
begin
     sensor_request(3);
refreshsensorstatelist; end;
procedure TForm1.Timer4Timer(Sender: TObject);
begin
     sensor_request(4);
refreshsensorstatelist; end;
procedure TForm1.Timer5Timer(Sender: TObject);
begin
     sensor_request(5);
refreshsensorstatelist; end;
procedure TForm1.Timer6Timer(Sender: TObject);
begin
     sensor_request(6);
refreshsensorstatelist; end;
procedure TForm1.Timer7Timer(Sender: TObject);
begin
     sensor_request(7);
refreshsensorstatelist; end;
procedure TForm1.Timer8Timer(Sender: TObject);
begin
     sensor_request(8);
refreshsensorstatelist; end;
procedure TForm1.Timer9Timer(Sender: TObject);
begin
     sensor_request(9);
refreshsensorstatelist; end;
procedure TForm1.Timer10Timer(Sender: TObject);
begin
     sensor_request(10);
refreshsensorstatelist; end;
procedure TForm1.Timer11Timer(Sender: TObject);
begin
     sensor_request(11);
refreshsensorstatelist; end;
procedure TForm1.Timer12Timer(Sender: TObject);
begin
     sensor_request(12);
refreshsensorstatelist; end;
procedure TForm1.Timer13Timer(Sender: TObject);
begin
     sensor_request(13);
refreshsensorstatelist; end;
procedure TForm1.Timer14Timer(Sender: TObject);
begin
     sensor_request(14);
refreshsensorstatelist; end;
procedure TForm1.Timer15Timer(Sender: TObject);
begin
     sensor_request(15);
refreshsensorstatelist; end;
procedure TForm1.Timer16Timer(Sender: TObject);
begin
     sensor_request(16);
refreshsensorstatelist; end;
procedure TForm1.Timer17Timer(Sender: TObject);
begin
     sensor_request(17);
refreshsensorstatelist; end;
procedure TForm1.Timer18Timer(Sender: TObject);
begin
     sensor_request(18);
refreshsensorstatelist; end;
procedure TForm1.Timer19Timer(Sender: TObject);
begin
     sensor_request(19);
refreshsensorstatelist; end;
procedure TForm1.Timer20Timer(Sender: TObject);
begin
     sensor_request(20);
refreshsensorstatelist; end;
procedure TForm1.Timer21Timer(Sender: TObject);
begin
     sensor_request(21);
refreshsensorstatelist; end;
procedure TForm1.Timer22Timer(Sender: TObject);
begin
     sensor_request(22);
refreshsensorstatelist; end;
procedure TForm1.Timer23Timer(Sender: TObject);
begin
     sensor_request(23);
refreshsensorstatelist; end;
procedure TForm1.Timer24Timer(Sender: TObject);
begin
     sensor_request(24);
refreshsensorstatelist; end;
procedure TForm1.Timer25Timer(Sender: TObject);
begin
     sensor_request(25);
refreshsensorstatelist; end;
procedure TForm1.Timer26Timer(Sender: TObject);
begin
     sensor_request(26);
refreshsensorstatelist; end;
procedure TForm1.Timer27Timer(Sender: TObject);
begin
     sensor_request(27);
refreshsensorstatelist; end;
procedure TForm1.Timer28Timer(Sender: TObject);
begin
     sensor_request(28);
refreshsensorstatelist; end;
procedure TForm1.Timer29Timer(Sender: TObject);
begin
     sensor_request(29);
refreshsensorstatelist; end;
procedure TForm1.Timer30Timer(Sender: TObject);
begin
     sensor_request(30);
refreshsensorstatelist; end;
procedure TForm1.Timer31Timer(Sender: TObject);
begin
     sensor_request(31);
refreshsensorstatelist; end;
procedure TForm1.Timer32Timer(Sender: TObject);
begin
     sensor_request(32);
refreshsensorstatelist; end;
procedure TForm1.Timer33Timer(Sender: TObject);
begin
  Clock.Caption:=TimeToStr(Now);
end;

procedure TForm1.timerSaveLogTimer(Sender: TObject);
begin
savelog;
botSubsMsg(urlencode('Я все еще жив. Сохраняю логи...'));
end;



end.

