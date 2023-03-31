pageextension 50105 "MS Pstd. Sales Shpt. Sbf. Ext." extends "Posted Sales Shpt. Subform"
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