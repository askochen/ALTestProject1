codeunit 50101 MyNewCodeunit
{
    [EventSubscriber(ObjectType::Table,18,'OnAfterInsertEvent','',true,true)]

    local procedure CustomerOnAfterInsert(var Rec : Record Customer;  Runtrigger : Boolean);
    begin
        Message('Some message');
    end;
}

