report 50124 BusinessReport
{
    ApplicationArea = All;
    Caption = 'Business Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'Layout/BusinessReport.docx';
    dataset
    {
        dataitem(Customer; "Customer")
        {
            column(CustomerNo; "No.") { }
            column(CustomerName; Name) { }
            column(CustomerPhoneNo; "Phone No.") { }
            column(CustomerEmail; "E-Mail") { }

        }
    }

}
