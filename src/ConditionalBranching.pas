unit ConditionalBranching;

{$mode objfpc}{$H+}
interface

uses
Classes,
StrUtils;

const PRICE_PER_GALLON = 6.5;

type
  TfuelType = (Ethanol,Methanol,Gasoline,Diesel,NaturalGas,Hydrogen,Biodiesel);

  Tperson = class
    name : String;
    phoneNumber : String;
    age : Integer;


    public
    function getKilometers(payment: Integer; fuelConsumption: Integer; fuelType: TfuelType): Integer;
  end;


var
  result : Integer;
  person : Tperson;


implementation

function Tperson.getKilometers (payment: Integer; fuelConsumption: Integer; fuelType: TfuelType) : Integer;
begin
  result := payment + fuelConsumption;
  WriteLn(fuelType);
end;

end.

