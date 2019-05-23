tableextension 50101 CustomerExtension extends Customer
{
    fields
    {
        field(50101;"Favorite Book";Code[10])
        {
            TableRelation = Book."No.";
            CaptionML = ENU = 'Favorite book';
        }
    }
    
 
}