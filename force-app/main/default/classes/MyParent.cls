public class MyParent {
    Account act;
    
    public MyParent(){
    
      act = [select id,name from account where id = '0015h00001VfvSv'];
      }
    

    public Account getMyParent() {
        return act;
    }

}