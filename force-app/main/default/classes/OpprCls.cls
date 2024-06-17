public class OpprCls {
    public static void insertOppr(List<Opportunity> oppr,Map<Id, Opportunity> m){
     List<Opportunity> myopp = new List<Opportunity>();
     for(Opportunity ap:oppr){
     if(ap.StageName =='Closed Lost' && m.get(ap.Id).StageName =='Closed Won'){
       ap.NextStep='escalate to manager';
        myopp.add(ap);
     }
    }
  }
}