public class Accountcls {
    
    public static void insertaccount(List<Account> acc){
        
     for(Account a:acc){
        if(a.Industry =='Education')
       {
          a.Ownership='Public';
       }
    }   
  }
}