public class ConsumeRest {
    public void consumeWebServices(){
        Http http =new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Set the body as a JSON Object
        request.setBody('{"name":"Tiger"}');
        HttpResponse response =http.send(request);
        //Parse the JSON Response 
        if(response.getStatusCode()!=201){
            System.debug('The status code returned was not expected:'+response.getStatusCode()+' '+response.getStatus());
        }else{
            System.debug(response.getBody());
        }      
    }
}