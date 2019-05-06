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
    //constructor create(firstName : String; middleName : String; lastName : String);
    function getFirstName() : String;
    function getMiddleName() : String;
    function getLastName() : String;

    procedure setFirstName(firstName : String);
    procedure setMiddleName(middleName : String);
    procedure setLastName(lastName : String);
  end;

implementation

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

end.

