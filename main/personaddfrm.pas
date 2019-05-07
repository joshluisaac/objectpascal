unit PersonAddFrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ActnList, StdActns, PersonModel;

type

  { TForm1 }

  TForm1 = class(TForm)
    ActionList1: TActionList;
    saveBtn: TButton;
    cancelBtn: TButton;
    firstName: TEdit;
    middleName: TEdit;
    lastName: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    remarks: TMemo;
    SearchFind1: TSearchFind;
    procedure cancelBtnClick(Sender: TObject);
    procedure firstNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure saveBtnClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  person : Tperson;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.saveBtnClick(Sender: TObject);
begin
  remarks.Text:= '';
  person := Tperson.create(firstName.Text,middleName.Text,lastName.text);
  remarks.Lines.Add(person.format());
end;

procedure TForm1.firstNameChange(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin
    remarks.Text:= '';
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.cancelBtnClick(Sender: TObject);
begin
  Form1.Close;
end;

end.

