tableextension 50105 "MS Sales Shipment Header Ext." extends "Sales Shipment Header"
{
    fields
    {
        field(50100; "MS New Posting Header"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Header';
        }
    }
}