public class OpportunitySchedule implements Schedulable {
    public void execute(SchedulableContext SC){
		OpportunityBatch opBatch=new OpportunityBatch();
        database.executeBatch(opBatch, 20);
    }
}