public class CollectionSetDemo {
 
    public void getNames(){
       
        Set<String> name= new Set<String>();
            name.add('sumant');   // add to a list using add function
            name.add('vinu');
            name.add('kiran');
            name.add('vikki');
            name.add('vinu');
            
           System.debug('Set elements ='+name);
       
        
       /* for(String x:name){   // Another way to print list elements
           System.debug('names ='+name);
     }    */
         
        
    }
    
}