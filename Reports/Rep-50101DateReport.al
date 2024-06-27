report 50121 "Date Report List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Date Report List';
    DefaultLayout = RDLC;
    RDLCLayout = 'DateReport.rdl';
    ProcessingOnly = true;




    dataset
    {
        dataitem(DataItemName; Date)
        {
            DataItemTableView = where("Period Name" = const('Tarehe'));
            column(PeriodName; "Period Name")
            {

            }

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                Message('we are on pre data item');

            end;

            trigger OnAfterGetRecord()

            begin
                Message('Record added!');
            end;


        }
    }

    requestpage
    {

        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(intVar; myint)
                    {
                        ApplicationArea = All;

                    }
                }
            }

        }



        actions
        {

            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;

                }
            }
        }
        trigger OnOpenpage()
        begin
            Message('On the request page');
        end;
    }


    // rendering
    // {
    //     layout("DateReport.rdl")
    //     {
    //         Type = RDLC;
    //         LayoutFile = '"DateReport.rdl';
    //     }
    // }




    trigger OnInitReport()
    begin

    end;

    trigger OnPreReport()
    begin
        Message('Not Yet done!');
    end;

    trigger OnPostReport()
    begin
        Message('Processing done!');
    end;





    var
        myint: Integer;

}