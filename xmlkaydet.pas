unit xmlkaydet;

interface

uses
  Forms, SysUtils, Windows, XmlIntf, XMLDoc;

const
  cbActive      = 'active';

implementation

procedure oku;
var
  root,
  node : IXMLNode;
  i:integer;
begin
{
XMLDocument1.LoadFromFile('test.xml');


  memo1.Lines.Add( XMLDocument1.DocumentElement.NodeName );

  XMLDocument1.DocumentElement.ChildNodes.FindNode('Genel');

  memo1.Lines.Add( XMLDocument1.DocumentElement.ChildValues['sWallpaper'] );
  memo1.Lines.Add( XMLDocument1.DocumentElement.ChildValues['bShowCal'] );

  memo1.Lines.Add('------ tip 2');

  for i:=0 to XMLDocument1.DocumentElement.ChildNodes['users'].ChildNodes.Count-1 do
    memo1.Lines.Add(
      XMLDocument1.DocumentElement.ChildNodes['users'].ChildNodes[i].NodeName
    );


  memo1.Lines.Add(
    XMLDocument1.DocumentElement.ChildNodes['users'].ChildNodes['Roee'].Attributes['level'])';
}
end;

end.


