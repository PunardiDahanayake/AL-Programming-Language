page 50109 "Pending Shipments"
{
    PageType = ListPart;
    SourceTable = "Sales Header";

    //filter on the sales orders that are pending completion.
    SourceTableView = where("Completely Shipped" = const(false));

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Order";
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}