public class MyBatchMerchandise implements Database.Batchable<sObject> {
        public Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name,Merchandise_Price__c from Merchandise__c';
        return Database.getQueryLocator(query); 
    }
    public void execute (Database.BatchableContext bc, list<Merchandise__c> mer)
    {
        for(Merchandise__c m:mer)
        {
            m.Merchandise_Price__c=100;
        }
        update mer;
    }
    public void doWork(){
        System.debug('Play cricket');
    }
    public void finish(Database.BatchableContext bc)
    {
      
    }

}