xmlport 50100 ExportImportBook
{
    Format = Xml;

    schema
    {
        textelement(Books)
        {
            tableelement(Book;Book)
            {
                fieldattribute(Number;Book."No.") {}
                fieldelement(Title;Book.Title) {}
                fieldelement(Author;Book.Author) {}
                fieldelement(PageCount;Book."Page Count") {}
                fieldelement(Hardcover;Book.Hardcover) {}
            }
        }
    }
}