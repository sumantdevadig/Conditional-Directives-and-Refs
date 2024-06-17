public class MultipleCatchList {   
    
        public void getDivide(integer a,integer b){
            
            try{
                
        	integer res=a/b;
                
        	System.debug('division of two number is '+res);
                List<String> name= new List<String>();   //List Exception
                name.add('sumant');
                System.debug('List are '+name.get(4)); 
               
                
            Demo d;   // null
            System.debug('Value of d is '+d); //Yes it will work, and Value of d is null 
            d.sayHello();
            
         
                
        }catch(MathException e){
            System.debug('Cannot divide A number with zero');
        }
            catch(NullPointerException n){
                System.debug('Do not call a method with null');
            }
            
             catch(Exception ex){
                System.debug('Server is busy, please wait for some time');
            	System.debug(ex);
            	System.debug(ex.getCause());
            	System.debug(ex.getLineNumber());
            	System.debug(ex.getMessage());
            	System.debug(ex.getStackTraceString());
            	System.debug(ex.getTypeName());
            }
               
    }
}