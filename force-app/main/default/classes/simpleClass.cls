public class simpleClass {
		@future
    public static void toUpperName(Set<Id> multiId){
        List< Lead> multiLead=[select id, firstName, lastName from lead where Id=:multiID];
        for(Lead singleLead:multiLead){
            singleLead.LastName=singleLead.LastName.toUppercase();            
            }
        update multiLead;
        }   
}