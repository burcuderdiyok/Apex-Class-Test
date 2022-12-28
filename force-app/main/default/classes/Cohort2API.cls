@RestResource(urlMapping='/welcome/*')
global class Cohort2API {
// https://triforcia-5e-dev-ed.my.salesforce.com/services/apexrest/
    
    @HttpGet
    global static Account retrieveAccount(){
        
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String params = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        
        Account acc = [SELECT id, Name, Phone, 
                       (SELECT id, Name, Phone, Email FROM Contacts) 
                       FROM Account 
                       WHERE id=:params];
      
        
        
        return acc;
    }
}