pageextension 50104 "Order Processor Ext" extends "Order Processor Role Center"
{

    // use existing role center


    layout
    {
        addbefore("User Tasks Activities")
        {
            part(CustomCue; CustomCue)
            {
                ApplicationArea = All;
            }
        }
    }
}
