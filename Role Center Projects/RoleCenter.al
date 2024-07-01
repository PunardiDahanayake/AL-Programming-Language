page 50123 RoleCenterName
{
    PageType = RoleCenter;
    Caption = 'My Role Center Try';

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; RoleCenterHeadline)
                {

                    ApplicationArea = All;
                }

            }
            group(Customer)
            {
                part(Part2; "Customer Sales History")
                {
                    ApplicationArea = All;
                }

            }
            group(Shipments)
            {
                part(Part3; "Pending Shipments")
                {
                    ApplicationArea = All;
                }

            }
        }
    }



    actions
    {

        area(Sections)
        {
            group(PostedInvoices)
            {
                Caption = 'Posted Invoices';
                Image = RegisteredDocs;
                action(PostedServiceInvoice)
                {
                    Caption = 'Posted Service Invoice';
                    RunObject = Page "Posted Service Invoices";
                    ApplicationArea = All;
                }
                action(PostedSalesInvoice)
                {
                    Caption = 'Posted Sales Invoice';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }
                group(SalesDocument)
                {
                    Caption = 'Sales Document';

                    action(SalesOrder)
                    {
                        ApplicationArea = All;
                        Caption = 'Sales Order';
                        RunObject = page "Sales Order";
                    }
                    action(SalesInvoice)
                    {
                        ApplicationArea = All;
                        Caption = 'Sales Invoice';
                        RunObject = page "Sales Invoice";
                    }
                }
            }
            group(p)
            {
                Caption = 'Posted Invoicessss';
                Image = RegisteredDocs;
                action(PostedSalesCreditMemos)
                {
                    Caption = 'Posted Sales Credit Memos';
                    RunObject = Page "Posted Sales Credit Memos";
                    ApplicationArea = All;
                }
            }
        }
        area(Embedding)
        {
            action(Sales)
            {
                Caption = 'Sales Lists';
                RunObject = Page "Sales List";
                ApplicationArea = All;
            }
            action(Purchase)
            {
                Caption = 'Purchase Lists';
                RunObject = Page "Purchase List";
                ApplicationArea = All;
            }
            action(Services)
            {
                Caption = 'Service Lists';
                RunObject = Page "Service List";
                ApplicationArea = All;
            }
            action(Inventory)
            {
                Caption = 'Inventory Lists';
                RunObject = Page "Inventory Comment List";
                ApplicationArea = All;
            }
        }
        area(Creation)
        {
            action(AddSalesOrder)
            {
                Caption = 'Add Sales Order';
                RunObject = Page "Sales Order";
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(AddSalesInvoice)
            {
                Caption = 'Add Sales Invoice';
                RunObject = Page "Sales Invoice";
                ApplicationArea = All;
                RunPageMode = Create;
            }
        }

        area(Processing)
        {
            action(ShipAndInvoice)
            {
                Caption = 'Ship And Invoice';
                RunObject = Page "Sales Invoice";
                ApplicationArea = All;
            }
        }
        area(Reporting)
        {
            action(SalesInvoiceReport)
            {
                Caption = 'Sales Invoice Report';
                RunObject = report "Standard Sales - Invoice";
                ApplicationArea = All;
                Image = Report;
            }
        }


    }
}

profile DemoProfile
{
    ProfileDescription = 'Demo Profile';
    RoleCenter = RoleCenterName;
    Caption = 'Demo Profile';
}