codeunit 50102 DotNetWrappers
{
   procedure MyProcedure();
   var
        myText : Text;
        myTextBuilder : TextBuilder;
    begin
        myTextBuilder.AppendLine('We can append new liness');
        myTextBuilder.Append('... or just characters to the current line');
        myTextBuilder.Replace('text can also be', 'replaced');
        myText := myTextBuilder.ToText();

        myText := myText.ToUpper();
    end;   

    procedure ListDemo();
    var
        customerNames : List of [Text];
    begin
        customerNames.Add('John');

        if customerNames.Contains('John') then
            Message('John is in the list');
        Message('Name at index 1:' + customerNames.Get(1));
    end;

    procedure CountCharacterInCustomerName(customerName : Text; var counter : Dictionary of [Char, Integer])
    var
        i : Integer;
        c : Integer;
    begin
        Clear(counter);

        for i := 1 to StrLen(customerName) do begin
            if counter.Get(customerName[i],c) then
                counter.set(customerName[i], 1)
            else
            counter.Add(customerName[i], 1);
        end;
    end;

    procedure printCustomerNames(customerNames : List of [Text])
    var
        name : text;
    begin
        foreach name in customerNames do
            Message(name);
    end;
    
}