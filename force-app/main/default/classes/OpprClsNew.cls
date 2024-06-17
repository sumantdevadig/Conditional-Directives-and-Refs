public class OpprClsNew {
    public static void insertOppr(List<Opportunity> opportunities){
	for(Opportunity op : opportunities)
    {
            if(op.StageName == 'Closed Lost'){
                op.NextStep = 'escalate to manager';
             }
    }
 
  }
}