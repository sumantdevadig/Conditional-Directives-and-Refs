public class Calculatornew {
    public Integer xvalue {get;set;}
    public Integer yvalue {get;set;}
    public Integer result {get;set;}
    public string operation {get;set;}
    
    
    public pagereference add() {
        result = xvalue+yvalue;
        System.debug('addition ='+result);
        operation = 'Addition';//
        return null;//
    }
 
    public pagereference sub() {
        result = xvalue-yvalue;
        operation = 'Subtraction';
        return null;
    }

    public pagereference mul() {
        result = xvalue*yvalue;
        operation = 'Multiplication';
        return null;
    }
        public pagereference div() {
        result = xvalue/yvalue;
        operation = 'Division';
        return null;
    }
}