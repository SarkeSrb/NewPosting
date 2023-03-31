tableextension 50103 "MS Sales Invoice Header Ext." extends "Sales Invoice Header"
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