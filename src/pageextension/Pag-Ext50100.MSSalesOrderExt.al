pageextension 50100 "MS Sales Order Ext." extends "Sales Order"
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