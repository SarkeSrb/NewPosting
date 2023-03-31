pageextension 50102 "MS Posted Sales Invoice Ext." extends "Posted Sales Invoice"
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