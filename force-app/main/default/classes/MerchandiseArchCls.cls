public class MerchandiseArchCls {
    public static void insertMerchandiseArch(List<Merchandise__c> mer){
        MerchandiseArch__c me= new MerchandiseArch__c();
        me.name=mer[0].name;
        me.MerchandiseArch_Desc__c=mer[0].Merchandise_Desc__c;
        me.MerchandiseArch_Stock__c=mer[0].Merchandise_Stock__c;
        me.MerchandiseArch_Price__c=mer[0].Merchandise_Price__c;
        insert me; 
         
        
        // to make code as bulkify using for loop
        
        MerchandiseArch__c ma;
        List<MerchandiseArch__c> malist= new List<MerchandiseArch__c>();
        for(Merchandise__c m : mer){
            ma = new MerchandiseArch__c();
            ma.name=m.name;
            malist.add(ma);
        }
        insert malist;
    }
}