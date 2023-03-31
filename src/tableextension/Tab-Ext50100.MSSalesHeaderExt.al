tableextension 50100 "MS Sales Header Ext." extends "Sales Header"
{
    fields
    {
        field(50100; "MS New Posting Header"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'New Posting Header';
        }
    }

    trigger OnInsert()
    begin
        "MS New Posting Header" := NewPostingLbl;
    end;

    var
        NewPostingLbl: Label 'New Posting!', Locked = true;
}