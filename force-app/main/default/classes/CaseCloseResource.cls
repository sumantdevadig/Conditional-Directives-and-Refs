@RestResource(urlMapping='/case/*/close')

global with sharing class CaseCloseResource {

    @HttpPost

    global static void closeCase(String reason) {                

        Id id = RestContext.request.requestURI.substringBetween('case/', '/close');

        CaseService.closeCases(new Set<Id>{id}, reason);

    }

}