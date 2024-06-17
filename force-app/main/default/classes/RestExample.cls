@RestResource(urlMapping='/myAccount/*')

global class RestExample {
    @httpGet
    global static List<Account> getDetails(){
        List<Account> act = [select id,name from account];
        return act;
    }
    
    @httpPost
    global static void createAccount(String accName){
        Account a = new Account();
        a.name=accName;
        insert a;
    }
    @httpDelete
    global static void deleteAccount(){
        RestRequest req=  RestContext.request;
        RestResponse res=  RestContext.response;
        String rid=req.requestURI.subString(req.requestURI.lastindexOf('/')+1);
        Account  acnt=[select id,name from account where id=:rid];
        delete acnt;
    }
}