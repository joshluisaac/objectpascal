unit PersonAddFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    saveBtn: TButton;
    cancelBtn: TButton;
    firstName: TEdit;
    Edit2: TEdit;
    middleName: TEdit;
    lastName: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    remarks: TMemo;
    Panel1: TPanel;
    procedure firstNameChange(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure saveBtnClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.saveBtnClick(Sender: TObject);
begin

end;

procedure TForm1.firstNameChange(Sender: TObject);
begin

end;

end.

