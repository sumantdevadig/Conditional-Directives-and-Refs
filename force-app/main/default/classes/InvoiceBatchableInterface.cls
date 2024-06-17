public class InvoiceBatchableInterface implements Database.Batchable<sObject> {
	public Database.QueryLocator start(Database.BatchableContext bc)
    { 	
        String q ='Select id FROM Invoice__c';
        return Database.getQueryLocator(q);
    }
    public void execute(Database.BatchableContext bc , List<Invoice__c> I)
    {
     	for(Invoice__c x:I)
        {
            x.Invoice_Closed_Date__c = Date.today();
        }
        update I;
    }
    public void finish(Database.BatchableContext bc)
    {
    }
}