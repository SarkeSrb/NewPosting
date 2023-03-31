tableextension 50102 "MS Sales Line Ext." extends "Sales Line"
{
    fields
    {
        field(50100; "MS New Posting Line"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Line';
        }
    }

    trigger OnInsert()
    begin
        "MS New Posting Line" := 5;
    end;
}