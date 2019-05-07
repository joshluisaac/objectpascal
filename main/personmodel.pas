unit PersonModel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  Tperson = class
    private
    FfirstName : String;
    FmiddleName : String;
    FlastName : String;
    public
    constructor create(firstName : String; middleName : String; lastName : String);
    function getFirstName() : String;
    function getMiddleName() : String;
    function getLastName() : String;
    function format(): string;

    procedure setFirstName(firstName : String);
    procedure setMiddleName(middleName : String);
    procedure setLastName(lastName : String);
  end;

implementation

function Tperson.format(): string;
var formattedMsg : string;
begin
  formattedMsg := '';
  formattedMsg:= 'First Name :' + #9 + self.FfirstName + sLineBreak;
  formattedMsg:= formattedMsg + 'Middle Name :' + #9 + self.FmiddleName + sLineBreak;
  formattedMsg:= formattedMsg + 'Last Name :' + #9 + self.FlastName;
  Result := formattedMsg;

end;

function Tperson.getFirstName(): String;
begin
  Result := self.FfirstName;
end;

procedure Tperson.setFirstName(firstName: string);
begin
  self.FfirstName := firstName;
end;

function Tperson.getMiddleName(): String;
begin
  Result := self.FmiddleName;
end;

procedure Tperson.setMiddleName(middleName: string);
begin
  self.FmiddleName := middleName;
end;


function Tperson.getLastName(): String;
begin
  Result := self.FlastName;
end;

procedure Tperson.setLastName(lastName: string);
begin
  self.FlastName := lastName;
end;

constructor Tperson.create(firstName : String; middleName : String; lastName : String); 
begin
  self.FfirstName := firstName;
  self.FmiddleName := middleName;
  self.FlastName := lastName;
end;

end.

