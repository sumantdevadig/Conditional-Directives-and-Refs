public class SOQLCustomObject {
        public void getAccountDetails()
        {
        List<Account> act = [select id, name from account];
        for (Account a : act)
        {
            System.debug('Account Id = '+a.id+' Account Name = '+a.name);
        }
    } 
    public void getMerchandiseDetails()
    {
       List<Merchandise__c> m = [select id, name, Merchandise_Desc__c, Merchandise_Stock__c, Merchandise_Price__c from Merchandise__c];
        for (Merchandise__c a : m )
        {
            System.debug('Merchandise id = '+a.id+' Merchandise Name = '+a.name+' Merchandise Desc = '+a.Merchandise_Desc__c+' Merchandise Stock = '+a.Merchandise_Stock__c+' Merchandise Price = '+a.Merchandise_Price__c);
        } 
    } 

}