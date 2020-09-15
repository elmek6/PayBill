unit global;

interface

const
  PATH_FILES  = 'Files\';

var
  Ayarlar : Record
    sDBUser       :String;
    sHost         :String;
    sWallPaper    :String;
    bCalendar     :Boolean;
    dTax          :Double;
  end;

  Kullanici : Record
    bLogin        :Boolean;
    sUser         :String;
    bManager      :Boolean;
  end;


procedure AyarlarYazOku(istek :Boolean);

implementation

uses prob, sysutils, QForms;



procedure AyarlarYazOku(istek :Boolean);
  var
    PAyar : TProb;
begin
  PAyar := TProb.Create(ExtractFilePath(Application.ExeName)+'settings.ini');

  try
    PAyar.ProbRW(istek, 'general', 'DBUser', ayarlar.sDBUser, 'root');
    PAyar.ProbRW(istek, 'general', 'Host', ayarlar.sHost, 'localhost');
    PAyar.ProbRW(istek, 'general', 'WallPaper', ayarlar.sWallPaper, '');
    PAyar.ProbRW(istek, 'general', 'Calendar', ayarlar.bCalendar, True);
    PAyar.ProbRW(istek, 'general', 'Tax Rate', ayarlar.dTax, 8.36);
  finally
    PAyar.Free;
  end;
end;

end.
