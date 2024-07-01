pageextension 50123 CusListPageExt extends "Customer List"
{
    actions
    {
        addlast("Navigation")
        {
            action("Open Business Report")
            {
                ApplicationArea = All;
                Image = Report;


                trigger OnAction()
                var
                    Cust: Record Customer;
                begin
                    Cust.Reset();
                    Cust.SetRange("No.", Rec."No.");
                    if Cust.FindFirst() then
                        Report.Run(Report::"BusinessReport", true, false, Cust);

                end;
            }
        }
    }
    // trigger OnOpenPage()

    // begin
    //     Report.Run(Report::"Bank Account List");
    // end;
}
