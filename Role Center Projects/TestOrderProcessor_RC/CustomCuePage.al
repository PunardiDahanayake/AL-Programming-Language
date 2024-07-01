page 50113 "CustomCue"
{
    PageType = CardPart;
    SourceTable = CustomCueTable;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(cuegroup1)
            {
                Caption = 'Blocked Customers';

                field(BlockedCustomers; BlockedCustomersVar)
                {
                    Caption = 'By Variable';
                    ApplicationArea = all;
                    StyleExpr = Style;

                    trigger OnDrillDown()
                    var
                        Cust: Record Customer;
                        CustomerList: Page "Customer List";
                    begin
                        Cust.SetRange(Blocked, Cust.Blocked::All);
                        CustomerList.SetTableView(Cust);
                        CustomerList.Run();
                    end;
                }

                field(BlockedCustomersFlowField; Rec.BlockedCustomers)
                {
                    Caption = 'By FlowField';
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = All;
                Image = Setup;

                trigger OnAction()
                var
                    CuesAndKpis: Codeunit "Cues And KPIs";
                    CueRecordRef: RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKpis.OpenCustomizePageForCurrentUser(CueRecordRef.Number);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

    trigger OnAfterGetCurrRecord()
    var
        Cust: Record Customer;
    begin
        Cust.SetRange(Blocked, Cust.Blocked::All);
        BlockedCustomersVar := Cust.Count();

        if BlockedCustomersVar > 2 then
            Style := 'Unfavorable';
    end;


    var
        BlockedCustomersVar: Integer;
        Style: Text;

}