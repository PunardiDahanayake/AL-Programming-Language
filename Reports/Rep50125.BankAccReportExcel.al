report 50125 BankAccReportExcel
{
    ApplicationArea = All;
    Caption = 'Bank Account Report Excel';
    UsageCategory = ReportsAndAnalysis;
    DefaultRenderingLayout = MyExcellayout;
    dataset
    {
        dataitem(DataItemName; "Bank Account Ledger Entry")
        {
            column(Bank_Account_No_; "Bank Account No.") { }
            column(Posting_Date; "Posting Date") { }
            column(Amount; "Amount") { }
        }
    }

    rendering
    {
        layout(MyExcellayout)
        {
            Type = Excel;
            LayoutFile = 'ReportLayout/bankledger.xlsx';
        }
    }


}
