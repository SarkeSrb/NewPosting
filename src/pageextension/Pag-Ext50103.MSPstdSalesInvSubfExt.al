pageextension 50103 "MS Pstd. Sales Inv. Subf Ext." extends "Posted Sales Invoice Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("MS New Posting Line"; Rec."MS New Posting Line")
            {
                ApplicationArea = All;
            }
        }
    }
}