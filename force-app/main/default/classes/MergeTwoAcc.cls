public class MergeTwoAcc {
    public void CreateAcc(string accName, integer numWork, string fName, string lName){
        Account newAcc=new Account(Name=accName);
        insert newAcc;
        
        List<Contact> multiCon=new List<Contact>();
        for(integer i=1; i<=numWork; i++){
          Contact newCon=new Contact();
          newCon.firstName=fName+' '+i ;
          newCon.lastName=lName+' '+i;
          newCon.AccountId=newAcc.Id;
          multiCon.add(newCon);
        }
        insert multiCon;
        
        List<Opportunity> multiOpp=new List<Opportunity>();
        for(integer i=1; i<=numWork; i++){
            Opportunity newOp=new Opportunity();
            newOp.Name=accName+' '+i;
            newOp.CloseDate=date.TODAY()+(i*15);
            newOp.StageName='value Proposition';
            newOp.AccountId=newAcc.Id;
            multiOpp.add(newOp);
        }
        insert multiOpp;
    }
    
    public void delAcc(string delAccNm, string delConNm){
        string workerNm='%'+delConNm+'%';
        List<Contact> delCon=[ select Id from Contact where Name like:workerNm];
        delete delCon;
        
        List<Account> delAcc=[ select Id from Account where Name=:delAccNm];
        delete delAcc;
    }

}