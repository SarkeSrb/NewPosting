tableextension 50101 "MS Gen. Journal Line Ext." extends "Gen. Journal Line"
{
    fields
    {
        field(50100; "MS New Posting Header"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Header';
        }
        field(50101; "MS New Posting Line"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Line';
        }
    }
}