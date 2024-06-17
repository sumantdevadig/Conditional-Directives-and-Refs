public class OpportunitiesWithAccount {
        public void getAllDetails()
        {
        List<Opportunity> op = [select id, name,account.name from opportunity];
        for (Opportunity oppor : op)
        {
            System.debug('Opportunity Id = '+oppor.id+' Opportunity Name = '+oppor.name+' Account Name = '+oppor.name);
        }
    }
}