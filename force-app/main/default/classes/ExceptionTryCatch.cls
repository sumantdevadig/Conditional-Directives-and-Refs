public class ExceptionTryCatch {
    
    public void getDivide(integer a,integer b){
        try{
        	integer res=a/b;
        	System.debug('division of two number is '+res);
        }catch(MathException e){
            System.debug('Cannot devide A number with zero');
        }
    }
}