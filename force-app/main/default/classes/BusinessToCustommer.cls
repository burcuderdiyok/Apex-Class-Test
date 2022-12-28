public class BusinessToCustommer {
    
    // single create method (2 params string,string)   V1 4 isim olursa ne olacak....  ?
    /*
public void create(String fName, String lname){
String fullName = fName+' '+lname;
Account singleAcc = New Account(name=fullName);
insert singleAcc;
Contact singleCon = New Contact(firstName=fName,lastName=lname,accountid=singleAcc.id);
insert singleCon;
}
*/
    
    // single create method (1 param string )   single operations OK -  bulk operations NEGATIVE
    
    /*
public void create(String fullName){
Integer numberofWords = fullname.split(' ').size();
String lastName = fullname.split(' ').get(numberofWords-1);
String firstName = fullname.replace(lastName,'');  
Account singleAcc = New Account(name=fullName);
insert singleAcc;
Contact singleCon = New Contact(firstName=firstName,lastName=lastName,accountid=singleAcc.id);
insert singleCon;
}
*/
       
    
    
    // multi create method (1 param list)
    public void create(List<String> nameList){
        
        list<Account> multiAcc = New List<Account>();
        
        
        for(String fullName:nameList){
            Account singleAcc = New Account(name=fullName);    
            multiAcc.add(singleAcc);    
        }
        
        insert multiAcc;
        
        
        list<Contact> multiCon = New List<Contact>();
        
        for(Account acc:multiAcc){
            
            String fullName= acc.Name;
            
            
            
            
            Integer numberofWords = fullName.split(' ').size();
            String lastName = fullName.split(' ').get(numberofWords-1);
            String firstName = fullName.replace(lastName,'');  
            
            Contact singleCon = New Contact(FirstName=firstName,LastName=lastName,accountid=acc.id); 
            
            multiCon.add(singleCon);            
            
        }
        
        insert multiCon;
   
        
    }

    
}