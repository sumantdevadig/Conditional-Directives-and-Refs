public class SOQLDemo {
    public void getAllAccount(){
        
        List<Account> ac = [select id,name from account];
        for (Account a:ac){
            System.debug('Account id is '+a.id +'Account name is '+a.name);
        }
    }

}