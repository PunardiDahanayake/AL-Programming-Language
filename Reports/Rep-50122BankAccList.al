report 50122 "Bank Account List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Bank Account List';
    DefaultLayout = RDLC;
    RDLCLayout = 'BankAccReport.rdl';


    dataset
    {
        dataitem(DataItemName; "Bank Account")
        {
            RequestFilterFields = "No.", "Date Filter";
            column(Bank_Account_No_; "Bank Account No.") { }
            column(BankName; "Name") { }
            column(Bank_Branch_No_; "Bank Branch No.") { }
            column(Balance; "Balance (LCY)") { }
            column(CompanyName; CompanyName) { }
            column(CompanyPic; companyInfo.Picture) { }
            column(Bank_Report_Title; Bank_Report_Title) { }

            dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
            {
                //filter bankl acc no
                DataItemLink = "Bank Account No." = field("No.");
                column(Document_No_; "Document No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Posting_Date; "Posting Date")
                {

                }
                column(Amount; Amount)
                {

                }
            }


        }
    }


    var
        companyInfo: Record "Company Information";
        Bank_Report_Title: Label 'Bank Account Report'; //the name of the report
}