tableextension 50106 "MS Sales Shipment Line Ext." extends "Sales Shipment Line"
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