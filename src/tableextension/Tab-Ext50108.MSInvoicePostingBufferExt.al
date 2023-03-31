tableextension 50108 "MS Invoice Posting Buffer Ext." extends "Invoice Posting Buffer"
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