public class CustomMetaDataDemo {
    public void getCustomMetaDataValue(){
        
        my_custom_metadata__mdt cmd=my_custom_metadata__mdt.getInstance('Update_meta_data');
        System.debug('Value of custom meta data= '+cmd);
        
        if(cmd.isActive__c ==true){
            System.debug('True');
        }else{
            System.debug('False');
        }
        
    }

}