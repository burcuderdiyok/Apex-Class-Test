public class LeadFuture {
    
    @future
    public static void toUpperName(Set<Id> multiID){
       system.debug('multi id : '+ multiID);
        
        List<Lead> multiLead = [SELECT Id, FirstName,LastName FROM Lead WHERE Id=:multiID];
        
        system.debug('multiLead : '+ multiLead);
        
        for(Lead singleLead:multiLead){
            
        system.debug('singleLead : '+ singleLead.LastName);            
            singleLead.LastName = singleLead.LastName.toUpperCase();
        }
        update multiLead;
        
    }
}