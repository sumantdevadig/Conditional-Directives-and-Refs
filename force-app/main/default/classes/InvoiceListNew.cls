@RestResource(urlMapping='/myInvoiceListNew/*')
global class InvoiceListNew {
    @httpPost
    global static void CreateInvoice(List<Invoice__c> InvoiceRecord)
    {
    insert InvoiceRecord;
    }
}

/*
 {"InvoiceRecord":[{"Invoice_Des__c":"Record 1 Created By workbench"},{"Invoice_Des__c":"Record 2 Created By workbench"},{"Invoice_Des__c":"Record 3 Created By workbench"},{"Invoice_Des__c":"Record 4 Created By workbench"}]
}
*/