codeunit 50100 "MS Posting Subscribers"
{
    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnAfterPrepareSales', '', true, true)]
    local procedure InvoicePostingBufferOnAfterPrepareSales(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; var SalesLine: Record "Sales Line")
    begin
        //Transfer for the GL Value
        InvoicePostingBuffer."MS New Posting Line" := SalesLine."MS New Posting Line";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnAfterBuildPrimaryKey', '', true, true)]
    local procedure InvoicePostingBufferOnAfterBuildPrimaryKey(var InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
        //Group G/L lines by value from the field "MS New Posting Line"
        InvoicePostingBuffer."Group ID" += InvoicePostingBuffer.PadField(Format(InvoicePostingBuffer."MS New Posting Line"), StrLen(Format(InvoicePostingBuffer."MS New Posting Line")));
    end;

    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnUpdateOnBeforeModify', '', true, true)]
    local procedure InvoicePostingBufferOnAfterUpdate(var InvoicePostingBuffer: Record "Invoice Posting Buffer"; FromInvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
        //Update the value for the line
        InvoicePostingBuffer."MS New Posting Line" += FromInvoicePostingBuffer."MS New Posting Line";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Invoice Posting Buffer", 'OnAfterCopyToGenJnlLine', '', true, true)]
    local procedure InvoicePostingBufferOnAfterCopyToGenJnlLine(var GenJnlLine: Record "Gen. Journal Line"; InvoicePostingBuffer: Record "Invoice Posting Buffer")
    begin
        //Transfer Value to General Journal Line
        GenJnlLine."MS New Posting Line" := InvoicePostingBuffer."MS New Posting Line";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromSalesHeader', '', true, true)]
    local procedure GenJournalLineOnAfterCopyGenJnlLineFromSalesHeader(SalesHeader: Record "Sales Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //Transfer Value to General Journal Line
        GenJournalLine."MS New Posting Header" := SalesHeader."MS New Posting Header";
    end;

    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', true, true)]
    local procedure GenJournalLineOnAfterOnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        //Transfer Value from General Journal Line
        GLEntry."MS New Posting Header" := GenJournalLine."MS New Posting Header";
        GLEntry."MS New Posting Line" := GenJournalLine."MS New Posting Line";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Cust. Ledger Entry", 'OnAfterCopyCustLedgerEntryFromGenJnlLine', '', true, true)]
    local procedure GenJournalLineOnAfterCopyCustLedgerEntryFromGenJnlLine(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        //Transfer Value from General Journal Line
        CustLedgerEntry."MS New Posting Header" := GenJournalLine."MS New Posting Header";
    end;
}