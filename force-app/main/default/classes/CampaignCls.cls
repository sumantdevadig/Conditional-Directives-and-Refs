public class CampaignCls {
    public static void insertCampaign(List<Campaign> camp){
        /*CampaignArchieve__c c = new CampaignArchieve__c ();
        c.name=camp[0].name;
        insert c; */
        CampaignArchieve__c c;
        List<CampaignArchieve__c> malist= new List<CampaignArchieve__c>();
        for(Campaign m : camp){
            c = new CampaignArchieve__c();
            c.name=m.name;
            malist.add(c);
        }
        insert malist;
    }
}