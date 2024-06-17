public class ExceptionCustomBoiler {
    
    public void getBoiled(integer speed){
        try{
            if(speed>=100){
                throw new BoilerException();
            }else{
                System.debug('Boiling Sir');
            }
        }catch(BoilerException be){
            speed=0;
            System.debug('Boiler Reset');
        }
        
    }
}