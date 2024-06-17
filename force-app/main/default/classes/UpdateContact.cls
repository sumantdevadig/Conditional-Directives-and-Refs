public class UpdateContact {

    public PageReference doSave() {
        upsert con;
        return new PageReference('/apex/myLetter');
    }

    Account con;
    public UpdateContact(){
       id i=apexpages.currentpage().getparameters().get('id');
       if(i==null){
       con=new account();
      }else{
      con=[select id,name from account where id=:i];
      }
      }

    public Account getUpdateContact() {
        return con;
    }

}