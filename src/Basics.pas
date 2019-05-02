program Basics;


{ syntax:
 type
 datatypeidentifier = typespecification;
}
type
  
  nType = Integer;
  TfirstName = String;
  TmiddleName = String;
  TlastName = String;
  Tage = Byte;

  //{$scopedenums on}
  Tmonths = (Jan=1,Feb=2,Mar=3,April=7,Dec=12);
  //procedure printParamsProc(const A: Integer ; var B:Integer);

//global constant
const nConst : Integer = 900; 

//global variable declaration
var
  N : nType = 900;
  Y : Integer;
  firstName : TfirstName;
  middleName : TmiddleName;
  lastName : TlastName;
  age : Tage;
  birthMonth : Tmonths;


{Params are semi-colon (;) separated and not comma(,) separated}
procedure printParamsProc(const A: Integer ; var B:Integer);
begin
    writeln('Printing integer: ', A, ',', B);
end;

{prints a given person's profile based on the args passed to the function}
procedure printPersonProfile(firstName: TfirstName ; MiddleName:TmiddleName; lastName:System.String; birthMonth:Tmonths; age:Tage);
begin
  writeln(firstName, '|', MiddleName, '|', lastName, '|', birthMonth, '|', age );
end;

{ 
  Prints the default person's profile.
  The default person's profile is initialize using initSetValues.
}
procedure printPersonProfile();
begin
  writeln(firstName, '|', MiddleName, '|', lastName, '|', birthMonth, '|', age );
end;

// will initialize global vars
procedure initSetValues;
begin
  Y := 100;
  firstName := 'defaultFirstName';
  middleName := 'defaultMiddleName';
  lastName := 'defaultLastName';
  age := 4;
  birthMonth := Tmonths(7);
end;



begin
  //initialize the default values
  initSetValues;

  //print min month
  WriteLn('Min month: ',Low(birthMonth));

  //print max month
  WriteLn('Max month: ',High(birthMonth));

  printParamsProc(N,Y);
  printPersonProfile();
  printPersonProfile(firstName,middleName,lastName,birthMonth,age);
  printPersonProfile('Sam','Oku','Nwankwo',Tmonths(12),20);
  printPersonProfile('Joshua','Uzo','Nwankwo',Tmonths(2),21);

end.