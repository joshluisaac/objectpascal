program InstrumentationEnum;

type
{ enumeration type }
months = (Jan,Feb,Mar,April);
_firstName = String;

var 
m : months;
firstName : _firstName;

begin
  writeln('Which month were u born?');
  m := Jan;

  writeln('You were born ', m);

  firstName := 'Joshua Nwankwo';

  writeln('First name ', firstName);
end.