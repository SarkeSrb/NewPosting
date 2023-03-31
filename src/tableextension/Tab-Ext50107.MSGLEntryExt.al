tableextension 50107 "MS G/L Entry Ext." extends "G/L Entry"
{
    fields
    {
        field(50100; "MS New Posting Header"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Header';
            Editable = false;
        }
        field(50101; "MS New Posting Line"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Line';
            Editable = false;
        }
    }
}