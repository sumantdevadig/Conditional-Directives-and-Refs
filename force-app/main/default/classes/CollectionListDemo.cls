public class CollectionListDemo {
    
    public void getNames(){
        
        List<String> nm1 = new List<String>();
        nm1.add('naveen');
        System.debug('List nm1 is '+nm1);
        
        
        List<String> name= new List<String>();
            name.add('sumant');// add to a list using add function
            name.add('vinu');
            name.add('kiran');
            name.add('vikki');
            name.add('vinu');
        
            nm1.addAll(name);
            System.debug(nm1);
        
            name.add(0,'guru'); //add at a particular position
            
            name.set(0,'gurukiran'); //replace at a particular position
        
            System.debug('List size = '+ name.size());  // display a size
        
            System.debug('IsEmpty = '+name.isEmpty());  //To check list is empty or not
        
            System.debug('List contains = '+name.contains('sumant'));
        
            // one way to print your list
           System.debug('List values are= '+name);   //whether element is present or not
        
            name.clear();
            System.debug('List size after clear= '+ name.size()); 
           
        
       /* for(String x:name){   // Another way to print list elements
            System.debug('names ='+name);
     }  */
        
        
    }
    
}