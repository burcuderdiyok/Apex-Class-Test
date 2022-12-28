public class findSearch {
    private List<Account> searchAcc;
    private List<Contact> searchCon;
    private List<Opportunity> searchOpp;
    private List<Lead> searchLd;
    
    public List<Account> getsearchAcc(){
        return searchAcc;
    }
    public List<Contact> getsearchCon(){
        return searchCon;
    }
    public List<Opportunity> getsearchOpp(){
        return searchOpp;
    }
    public List<Lead> getsearchLd(){
        return searchLd;
    }
    
    
    public findSearch(){
        searchAcc=new List<Account>();
        searchCon=new List<Contact>();
        searchOpp=new List<Opportunity>();
        searchLd=new List<Lead>();
    }
    
    public void search(String searchTerm, string field){
        system.debug(searchTerm+ ' is searching');
        
        List<List<sObject>> listOfSearch=new List<List<sObject>>();
        
        
        if(field.toUpperCase()=='ALL'){
            listOfSearch=[find :searchTerm in ALL fields 
                          returning Account (Id,Name,industry,Phone) ,
                          Contact( Id,Name,Email), Opportunity (Id,Name,Amount), 
                          Lead(id,Name),bank__c(Id,name) ];    
        }else {
            listOfSearch=[find :searchTerm in Name fields 
                          returning Account (Id,Name,industry,Phone) ,
                          Contact( Id,Name,Email), Opportunity (Id,Name,Amount), 
                          Lead(id,Name),bank__c(Id,name) ];
        }
        searchAcc= listOfSearch[0];
        searchCon= listOfSearch[1];
        searchOpp= listOfSearch[2];
        searchLd= listOfSearch[3];
        
        system.debug('Accounts: ---------');
        for(Account singleAcc:searchAcc){
            system.debug(singleAcc.Name);
        }
        system.debug('Contacts: ---------');
        for(Contact singleCon:searchCon){
            system.debug(singleCon.Name);
        }
        system.debug('Opportunities: ---------');
        for(Opportunity singleOpp:searchOpp){
            system.debug(singleOpp.Name);
        }
        system.debug('Leads: ---------');
        for(Lead singleLd:searchLd){
            system.debug(singleLd.Name);
        }
    }
    
}