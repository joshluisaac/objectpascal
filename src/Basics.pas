program Basics;

type
  
  nType = Integer;
  firstNameType = String;
  middleNameType = String;
  lastNameType = String;
  ageType = Byte;

  //{$scopedenums on}
  Tmonths = (Jan,Feb,Mar,April);
  //procedure printParamsProc(const A: Integer ; var B:Integer);

const nConst : Integer = 900; 

var
  N : nType = 900;
  Y : Integer;

  firstName : firstNameType;
  MiddleName : middleNameType;
  lastName : lastNameType;
  age : ageType;
  months : Tmonths;


{Params are semi-colon (;) separated and not comma(,) separated}
procedure printParamsProc(const A: Integer ; var B:Integer);
begin
    writeln('Printing integer: ', A, ',', B);
end;

procedure printFullNameProc(firstName: String ; MiddleName:String; lastName:System.String);
begin
  
  writeln(firstName, ' ', MiddleName, ' ', lastName );
  WriteLn('Birth month: ', months)
end;



begin
    Y := 100;
    firstName := 'Joshua';

    //fetches the 3rd item in enumerated type
    months := Tmonths(2);

    WriteLn(High(months));
    printParamsProc(N,Y);
    printFullNameProc(firstName,'Uzo','Nwankwo');


end.