page 50111 "Customer Sales History"
{
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            //display data as cue tiles
            cuegroup(Overview)
            {
                //CueGroupLayout = Wide;
                field("No. of Quotes"; Rec."No. of Quotes")
                {

                    ApplicationArea = All;
                    DrillDownPageId = "Sales Quotes";

                }
                field("No. of Orders"; Rec."No. of Orders")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Order List";

                }
                field("No. of Credit Memos"; Rec."No. of Credit Memos")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Credit Memo";

                }

                cuegroup(Another)
                {
                    field("No. of Series"; Rec."No. Series")
                    {
                        ApplicationArea = All;
                        DrillDownPageId = "Sales No. Series Setup";

                    }
                }
            }
        }
    }
}