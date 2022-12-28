public class LeadQueueable implements Queueable{ //interface
    private Lead singleLead;
    
   public LeadQueueable(Lead singleLead){       //public LeadQueueable(Lead sLead){   
        this.singleLead=singleLead;                     //singleLead=sLead;
    }
    
    public void execute(QueueableContext context){
        system.debug('queueable apex working'+singleLead);
    }

}