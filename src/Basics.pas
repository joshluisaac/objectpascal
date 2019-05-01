program Basics;

type
  
  nType = Integer;
  firstNameType = String;
  middleNameType = String;
  lastNameType = String;
  ageType = Byte;
  monthsType = (Jan,Feb,Mar,April);
  //procedure printParamsProc(const A: Integer ; var B:Integer);

const nConst : Integer = 900; 

var
  N : nType = 900;
  Y : Integer;

  firstName : firstNameType;
  MiddleName : middleNameType;
  lastName : lastNameType;
  age : ageType;
  months : monthsType;


{Params are semi-colon (;) separated and not comma(,) separated}
procedure printParamsProc(const A: Integer ; var B:Integer);
begin
    writeln('Printing integer: ', A, ',', B);
end;

procedure printFullNameProc(firstName: String ; MiddleName:String; lastName:System.String);
begin
  writeln(firstName, ' ', MiddleName, ' ', lastName );
end;



begin
    Y := 100;
    firstName := 'Joshua';
    printParamsProc(N,Y);
    printFullNameProc(firstName,'Uzo','Nwankwo');


end.