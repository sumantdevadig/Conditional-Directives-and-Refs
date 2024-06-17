public class CustomSettingDemo {
    public void customsettingExample(){
        mysetting__c mcs=mysetting__c.getInstance('mydataset');
        System.debug('Value of custom setting= '+mcs);
        if(mcs.isActive__c ==true){
            System.debug('Please call my trigger');
        }else{
            System.debug('Sorry, I Cannot');
        }
    }
}