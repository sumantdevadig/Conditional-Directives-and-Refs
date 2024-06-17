public class MyClass {

    public PageReference doSave() {
        upsert acc;
        return new PageReference('/apex/mysuccess');
    }

    
    Account acc;
    
    public MyClass(){
        id i = apexpages.currentpage().getparameters().get('id');
        if(i==null){
        acc = new Account(); 
        }
        else{
        acc=[select id,name from account where id =:i];
        }
        }

    public Account getMyClass() {
        return acc;
    }

}