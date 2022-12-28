public class B2C {
    //single create method (2 params string,string)   what about four names....  ?
    public  void create( string fn, string ln){
        string fullName=fn+' '+ln;
        Account singleAcc=new Account(name=fullName);
        insert singleAcc;
        Contact singleCon=new Contact(firstname=fn, lastName=ln, AccountId=singleAcc.Id);
        insert singleCon;
    }
    //
    public  void create(string fullName){
        integer numberOfW=fullName.split(' ').size();
        string lastN=fullName.split(' ').get(numberOfW-1);
        string firstN=fullName.replace(lastN,'');
        Account singleAcc=new Account(name=fullName);
        insert singleAcc;
        Contact singleCon=new Contact(firstName=firstN, lastName=lastN, AccountId=singleAcc.Id);
        insert singleCon;
    }
    public  void create( List<String> nameList){
        List<Account> multiAcc=new List<Account>();
        for( string fullName: nameList){
            Account singleAcc=new Account(name=fullName);
            multiAcc.add(singleAcc);        
        }
        insert multiAcc;
        List<contact> multiCon=new List<contact>();
        for( Account acc:multiAcc){
            string fullName=acc.Name;
            integer numberOfW=fullName.split(' ').size();
            string lastN=fullName.split(' ').get(numberOfW-1);
            string firstN=fullName.replace(lastN,'');
            Contact singleCon=new Contact(firstName=firstN, lastName=lastN, AccountId=acc.Id);
            multiCon.add(singleCon);
        }
        insert multiCon;
        
    }
}