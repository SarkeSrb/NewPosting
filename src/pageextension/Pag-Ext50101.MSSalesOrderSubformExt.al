pageextension 50101 "MS Sales Order Subform Ext." extends "Sales Order Subform"
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