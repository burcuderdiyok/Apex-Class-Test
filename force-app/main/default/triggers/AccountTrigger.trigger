trigger AccountTrigger on Account (before insert,after insert,before update,after update, before delete, after delete, after undelete) {
    
    // System.debug('AccountTrigger is working  Operation Type : '+ Trigger.operationType);
    switch on Trigger.operationType{
        when BEFORE_INSERT {
        AccountTriggerHelper triggerHelper=new AccountTriggerHelper ();
            triggerHelper.NameUpdate(Trigger.new);
            triggerHelper.validation(Trigger.new);
        }
        when AFTER_INSERT {}
        when BEFORE_UPDATE {}
        when AFTER_UPDATE {}
        when BEFORE_DELETE {}
        when AFTER_DELETE {}
        when AFTER_UNDELETE {}   
    }
}