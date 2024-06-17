@RestResource(urlMapping='/myInvoice/*')
global class ExposeInvoiceRestful {
    @httpGet
    global static List<Invoice__c> getDetails(){
        List<Invoice__c> inv = [select id,name,Invoice_Des__c,Invoice_Status__c,Invoice_Closed_Date__c,Invoice_total_Price__c from Invoice__c];
        return inv;
    }
}