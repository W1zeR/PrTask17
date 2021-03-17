unit UnitT17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

const
  Allowed: set of char = ['А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ё', 'Ж', 'З', 'И', 'Й', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ', 'Ы', 'Ь', 'Э', 'Ю', 'Я', 'а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я', ' '];

type
  TTemp = array of integer;
  TMainForm = class(TForm)
    Open: TOpenDialog;
    Save: TSaveDialog;
    Menu: TMainMenu;
    Input: TMemo;
    Fail: TMenuItem;
    Prog: TMenuItem;
    Comp: TMenuItem;
    Openn: TMenuItem;
    Savee: TMenuItem;
    SaveAs: TMenuItem;
    Exitt: TMenuItem;
    InBox: TGroupBox;
    OutBox: TGroupBox;
    Splitter: TSplitter;
    Output: TMemo;
    ClearWin: TMenuItem;
    procedure CompClick(Sender: TObject);
    procedure ExittClick(Sender: TObject);
    procedure OpennClick(Sender: TObject);
    procedure SaveeClick(Sender: TObject);
    procedure SaveAsClick(Sender: TObject);
    procedure ClearWinClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure SkipSpace (var Str: string; var i,j,n: integer);
  begin
    while (i<n) and (Str[i]=' ') do
      inc(i);
    j:=i;
  end; {SkipSpace}

function FindK (var Str: string; var n: integer): integer;
  var
    p,q: string; {p- само слово, q- все слова перед ним}
    k: integer; {кол-во различных слов в строке}
    i,j: integer;
  begin
    k:=0;
    i:=1;
    SkipSpace(Str,i,j,n);
    while i<n do
      begin
        while (i<n) and (Str[i]<>' ') do
          inc(i);
        p:=Copy(Str,j-1,i-j+2);
        q:=Copy(Str,1,j-1);
        if Pos(p,q)=0
          then inc(k);
        SkipSpace(Str,i,j,n);
      end; {while i}
    FindK:=k;
  end; {FindK}

procedure TMainForm.CompClick(Sender: TObject);
  var
    Temp: TTemp;
    Str: string;
    i,j,h: integer;
    kmax: integer; {max кол-во различных слов}
    n: integer; {длина строки}
    Rus: boolean; {для проверки на русские буквы}
  begin
    {Проверка на русские буквы}
    j:=Input.Lines.Count;
    SetLength(Temp,j);
    i:=0;
    Rus:=true;
    while (i<=j-1) and Rus do
      begin
        Str:=Input.Lines[i];
        n:=Length(Str);
        h:=1;
        while (h<=n) and Rus do
          if Str[h] in Allowed
            then inc(h)
            else
              begin
                Rus:=false;
                ShowMessage('Внимание! Файл должен состоять только из русских букв');
              end; {if Str[h]}
        inc(i);
      end; {while i}
    {Проверка на кол-во строк в файле}
    case j of
      0: ShowMessage('Файл пуст');
      1: Output.Lines[0]:=Input.Lines[0];
      else
        begin
          {Заполнение массива Temp}
          for i:=0 to j-1 do
            begin
              Str:=' '+Input.Lines[i]+' ';
              n:=Length(Str);
              Temp[i]:=FindK(Str,n);
            end; {for i}
          {Вывод ответа}
          kmax:=Temp[0];
          for i:=1 to j-1 do
            if Temp[i]>kmax
              then kmax:=Temp[i];
          for i:=0 to j-1 do
            if Temp[i]=kmax
              then Output.Lines.Add(Input.Lines[i]);
        end; {case (else)}
    end;{case i}
  end; {CompClick}

procedure TMainForm.ExittClick(Sender: TObject);
  begin
    Close;
  end; {ExittClick}

procedure TMainForm.OpennClick(Sender: TObject);
  begin
    if Open.Execute
      then Input.Lines.LoadFromFile(Open.FileName);
  end; {OpennClick}

procedure TMainForm.SaveAsClick(Sender: TObject);
  begin
    if Save.Execute then
      Output.Lines.SaveToFile(Save.FileName);
  end; {SaveAsClick}

procedure TMainForm.SaveeClick(Sender: TObject);
  begin
    if (Open.FileName<>'') and (Output.Lines.Count<>0)
      then Output.Lines.SaveToFile(Open.FileName)
      else SaveAsClick(Sender);
  end; {SaveeClick}

procedure TMainForm.ClearWinClick(Sender: TObject);
  begin
    Output.Lines.Clear;
  end; {ClearWinClick}
end.
