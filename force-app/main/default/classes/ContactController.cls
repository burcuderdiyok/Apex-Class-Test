public class ContactController {
    public List<Contact> getContacts(string titleContext){
        List<Contact> returnContacts=[SELECT Title, FirstName, LastName, Name, Phone, AccountId, Id, Email
                                      FROM Contact 
                                      where title like :titleContext];
        return returnContacts;
    }
}