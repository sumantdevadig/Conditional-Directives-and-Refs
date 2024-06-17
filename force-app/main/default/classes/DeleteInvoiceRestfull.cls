@RestResource(urlMapping='/myInvoiceDelete/*')
global class DeleteInvoiceRestfull {
        @httpDelete
    	global static void delInvoice(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String reqid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        invoice__c inv = [select id from invoice__c where id=:reqid];
        delete inv;
      }
}