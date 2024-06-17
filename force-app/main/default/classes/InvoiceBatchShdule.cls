public class InvoiceBatchShdule implements schedulable{
    public void execute(SchedulableContext sc){
        MyBatch mb = new MyBatch();
        database.executeBatch(mb);
    }
}