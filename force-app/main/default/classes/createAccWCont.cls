public class createAccWCont {
    public void create(string accountName, string fName, string lName){
        Account singleAcc=new Account(name=accountName);
        insert singleAcc;
        Contact singleCon= new Contact(firstName=fName, lastName=lName, accountId=singleAcc.Id);
        insert singleCon;
    }
}