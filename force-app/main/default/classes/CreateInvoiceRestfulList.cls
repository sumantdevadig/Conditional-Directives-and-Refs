@RestResource(urlMapping='/InvoiceInsertList/*')
global class CreateInvoiceRestfulList {
	@httpPost
    global static void createInvoice(List<String> invoiceDesc){
        List<Invoice__c> ic=new List<Invoice__c>();
        for(String descs:invoiceDesc){
            Invoice__c newInvoice=new Invoice__c();
            newInvoice.Invoice_Des__c=descs;
            ic.add(newInvoice);
        }
        insert ic;
    }
}