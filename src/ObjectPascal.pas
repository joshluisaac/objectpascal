program ObjectPascal;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  ConditionalBranching, Classes, SysUtils;


begin
WriteLn(ConditionalBranching.TfuelType(4));
WriteLn(ConditionalBranching.person.getKilometers(1,3,TfuelType(4)));
end.