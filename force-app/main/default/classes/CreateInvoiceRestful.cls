@RestResource(urlMapping='/myInvoiceCreate/*')
global class CreateInvoiceRestful {
    @httpPost
    global static void createInvoice(String invdesc,String invstatus){
        Invoice__c i = new Invoice__c();
        i.Invoice_Des__c = invdesc;
        i.Invoice_Status__c = invstatus;
      insert i;
   }
}