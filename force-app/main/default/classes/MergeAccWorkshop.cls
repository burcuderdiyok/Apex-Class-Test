public class MergeAccWorkshop {
    public void CreateAccCont(string compName, integer howManyWorkers, string fName, string lName){
        Account newAcc=new Account(Name=compName);
        insert newAcc;
        
        List<Contact> multiContact=new List<Contact>();
        
        for( integer workers=1; workers<=howmanyWorkers; workers++){
            Contact newCon=new Contact();
            newCon.firstName=fName+' '+workers;
            newCon.lastName=lName+' '+workers;
            newCon.AccountId=newAcc.Id;
            multiContact.add(newCon);
        }
        insert multiContact;
        
        List<Opportunity> multiOp=new List<Opportunity>();
        for( integer opp=1; opp<=10; opp++){
            Opportunity newOp=new Opportunity();
            newOp.Name=compName+' '+opp;
            newOp.CloseDate=date.TODAY()+(opp*15);
            newOp.stageName='value propositions';
            newOp.AccountId=newAcc.Id;
            multiOp.add(newOp);
        }
        insert multiOp;
    } 
        public void deleteAccCont(string DeleteAccName, string DeleteContactName){
            string workersName='%'+DeleteContactName+'%';
            List<Contact> contactDelete=[select Id from Contact
                                        where Name like:workersName];
            Delete contactDelete;
            
            //string DeleteAccName='%'+DeleteAccountName+'%';
            List<Account> deleteAcc=[select Id from Account
                                        where Name =:DeleteAccName];
            Delete deleteAcc;

            string opName='%'+DeleteAccName+'%';
            List<Opportunity> oppDelete=[select Id from opportunity
                                        where Name like:opName];
            Delete oppDelete;            
            
            
        
    }
}