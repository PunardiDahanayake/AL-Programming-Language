reportextension 50132 CustomerRepExt extends "Customer - List"
{
    dataset
    {
        add(Customer)
        {
            column(Address; Address)
            {
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'CustomerList.rdlc';
        }
    }
    var
        DisplayMessage :Label 'Extended Report Version';
}
