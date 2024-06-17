public class MultipleCatch {
   
        public void getDivide(integer a,integer b){
            
            try{
                
        	integer res=a/b;
                
        	System.debug('division of two number is '+res);
            Demo d;   // null
            System.debug('Value of d is '+d); //Yes it will work, and Value of d is null 
            d.sayHello();
                
        }catch(MathException e){
            System.debug('Cannot divide A number with zero');
        }
            catch(NullPointerException n){
                System.debug('Do not call a method with null');
            }
    }
}