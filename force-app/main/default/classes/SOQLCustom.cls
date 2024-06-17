public class SOQLCustom {
    
    public void getAllAccount(){
        
        List<Merchandise__c> ac = [select id,name,Merchandise_Stock__c, Merchandise_Price__c, Merchandise_Desc__c  from Merchandise__c];
        for (Merchandise__c a:ac){
            System.debug('Merchandise id = '+ a.id +' Merchandise name = '+ a.name +'Merchandise Stock = '+a.Merchandise_Stock__c+'Merchandise Price = '+a.Merchandise_Price__c);
        }
    }

}