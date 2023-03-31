pageextension 50104 "MS Posted Sales Shipmen Ext." extends "Posted Sales Shipment"
{
    layout
    {
        addlast(General)
        {
            field("MS New Posting"; Rec."MS New Posting Header")
            {
                ApplicationArea = All;
                ToolTip = 'Transfer Using New Posting Routine', Locked = true;
            }
        }
    }
}