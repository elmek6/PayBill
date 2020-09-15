unit prob;

interface

uses
  IniFiles;

type
  TProb = class
  private
    FIniFile     :TIniFile;
    FFileName    :String;
  public
    constructor Create(FileName: String); overload;
    procedure ProbRW(Rq: Boolean; Section, Key :String; var Value :Boolean; Default :Boolean); overload;
    procedure ProbRW(Rq: Boolean; Section, Key :String; var Value :Double; Default :Double); overload;
    procedure ProbRW(Rq: Boolean; Section, Key :String; var Value :String; Default :String); overload;
  end;

implementation

constructor TProb.Create(FileName: String);
begin
  FFileName := FileName;
  FIniFile  := TIniFile.Create(FileName);
end;

procedure TProb.ProbRW(Rq: Boolean; Section, Key :String; var Value :Boolean; Default :Boolean);
begin
  if Rq then
    FIniFile.WriteBool(Section ,Key, Value)
  else
    Value := FIniFile.ReadBool(Section, Key, Default);
end;

procedure TProb.ProbRW(Rq: Boolean; Section, Key :String; var Value :Double; Default :Double);
begin
  if Rq then
    FIniFile.WriteFloat(Section ,Key, Value)
  else
    Value := FIniFile.ReadFloat(Section, Key, Default);
end;

procedure TProb.ProbRW(Rq: Boolean; Section, Key :String; var Value :String; Default :String);
begin
  if Rq then
    FIniFile.WriteString(Section ,Key, Value)
  else
    Value := FIniFile.ReadString(Section, Key, Default);
end;


end.
