page 50107 RoleCenterHeadline
{
    Caption = 'Headline';
    PageType = HeadlinePart;
    layout
    {
        area(Content)
        {
            group(General)
            {
                ShowCaption = false;
                field(Welcome; Welcome)
                {
                    ApplicationArea = All;

                }
                field(Awesome; BusinessCentralIsAwesomeLbl)
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        Hyperlink('https://go.microsoft.com/fwlink/?linkid=867580');
                    end;

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Welcome := StrSubstNo(WelcomeLbl, UserId());
    end;

    var

        //user define var
        Welcome: Text;
        WelcomeLbl: Label 'Welcome %1';BusinessCentralIsAwesomeLbl: Label '<qualifier>Business Central</qualifier><payload>Headlines in <emphasize>Microsoft Learn</emphasize></payload>';

}