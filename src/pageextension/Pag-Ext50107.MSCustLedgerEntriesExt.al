pageextension 50107 "MS Cust. Ledger Entries Ext." extends "Customer Ledger Entries"
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
        }
    }
}