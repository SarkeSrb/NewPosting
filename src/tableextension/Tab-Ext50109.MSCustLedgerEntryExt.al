tableextension 50109 "MS Cust. Ledger Entry Ext." extends "Cust. Ledger Entry"
{
    fields
    {
        field(50100; "MS New Posting Header"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Header';
            Editable = false;
        }
    }
}