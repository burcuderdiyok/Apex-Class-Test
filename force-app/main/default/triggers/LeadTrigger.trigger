trigger LeadTrigger on Lead (before insert, after insert,before update, after update) {
    Set<Id> SetLeadID=new Set<Id>();
    // operationType 
   System.debug(Trigger.operationType);
    switch on Trigger.operationType {
        when BEFORE_INSERT {    
        }
        when AFTER_INSERT {
              for(Lead singleLead:trigger.new){
                system.debug(' trigger : '+ singleLead.id);
                SetLeadID.add(singleLead.id);
            } 
             system.debug(' setof id  : '+ SetLeadID);
           LeadFuture.toUpperName(SetLeadID);
        }
        when BEFORE_UPDATE { }
        when AFTER_UPDATE {}
        when BEFORE_DELETE {}
        when AFTER_DELETE {}
        when AFTER_UNDELETE {}
    }  
}