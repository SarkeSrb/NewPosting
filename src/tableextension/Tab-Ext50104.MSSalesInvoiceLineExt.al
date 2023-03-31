tableextension 50104 "MS Sales Invoice Line Ext." extends "Sales Invoice Line"
{
    fields
    {
        field(50100; "MS New Posting Line"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Line';
        }
    }
}