public class SOSLDemo {
    
    public void searchText(){
        
        List<list<sObject>> searchedText = [find 'gene' in all fields returning Contact(id,name),Account(id,name)];
        
        List<Contact> con = searchedText[0];
        List<Account> acc = searchedText[1];
        
        if (con.size()>0)
        {
            for(Contact c:con)
            {
                System.debug('Contact id = '+c.id+' Contact Name= '+c.name);
            }
        }
        
        if(acc.size()>0)
        {
            for(Account a : acc)
            {
                System.debug('Account id= '+a.id+' Account Name = '+a.name);
            }
            
        }
    }

}