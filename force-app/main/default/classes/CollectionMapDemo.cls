public class CollectionMapDemo {
    public void getNames(){
       
            Map<String,String> name= new Map<String,String>();
            name.put('nm1','sumant'); 
            name.put('nm2','vinu');
            name.put('nm3','kiran');
            name.put('nm4','vikki');
        
           // System.debug('Map elements are '+name);
             
            name.put('nm1','gurukiran');
        
           // System.debug('Map after elements are '+name);
           
        
           Set<String> key = name.keySet();
           for(String k1:key){
               System.debug('keys are '+ name.get(k1));
            
           }
        
        List<String> val=name.values();
        for(String v1:val){
            System.debug('values are '+ v1);
        }
        
            
        
             
           
    }

}