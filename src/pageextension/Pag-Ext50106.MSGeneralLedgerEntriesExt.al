pageextension 50106 "MS General Ledger Entries Ext." extends "General Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("MS New Posting"; Rec."MS New Posting Header")
            {
                ApplicationArea = All;
                ToolTip = 'Transfer Using New Posting Routine', Locked = true;
            }
            field("MS New Line"; Rec."MS New Posting Line")
            {
                ApplicationArea = All;
                ToolTip = 'Transfer Using New Posting Routine', Locked = true;
            }
        }
    }
}