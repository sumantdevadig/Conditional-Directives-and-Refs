public class AccountWithOpportunity {
    public void getAllRecords()
    {
        List<Account> acc = [select id,name,(select id,name from Opportunities) from Account];
        for(Account a:acc)
        {
            System.debug('Account id = '+a.id+' Account Name = '+a.name+' Opportunity Name = '+a.name);
        }
    }

}