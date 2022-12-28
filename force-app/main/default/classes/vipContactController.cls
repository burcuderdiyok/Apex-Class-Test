public class vipContactController {
    public void getvip(){
        // parent to child
        List<Account> multiAcc = [SELECT Name,AnnualRevenue, (SELECT Name, Title, Email,Phone FROM Contacts) 
                                  FROM Account 
                                  WHERE AnnualRevenue>100000000];
        List<Contact> vipContact= New List<Contact>();
        for(Account acc:multiAcc){
            vipContact.addAll(acc.contacts);
            System.debug('size : '+ acc.contacts.size());
        }
        for(Contact singleContact:vipContact){
            System.debug('VIP Contact : '+ singleContact.Name);
        }
    }
}