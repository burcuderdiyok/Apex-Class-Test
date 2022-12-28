public class OpportunityBatch implements Database.Batchable<sObject>{
    
	//start: 50millions data divided scopes (small batchs)
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT id FROM opportunity'); 
    }
    
	//execute small batch (scope) process --> new small (scope )batch
    public void execute(Database.BatchableContext BC, List<Opportunity> scope){
        system.debug('scope size : '+scope.size());
        for(opportunity s:scope){
            // system.debug(s);
        }
    }
    //finish 50 millions data finish
    public void finish(Database.BatchableContext BC){
        system.debug('Batch apex opp finished');
    }
}