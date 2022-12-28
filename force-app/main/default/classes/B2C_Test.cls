@istest public class B2C_Test {
    
       @testSetup
    public static void setup(){
         // prepare test DATA
        B2C b2c = New B2C();        
        List<String> listOfCustomerTEST = New List<String>();        
        for(Integer counter=1;counter<=10;counter++){            
            listOfCustomerTEST.add('Test '+counter+' Test'+counter);        
        }        
        b2c.create(listOfCustomerTEST); 
    }
    
    @istest public static void create_Test(){
        B2C bc=new B2C();
        List<String> customerList= new List<string>{'Ali Celil Gel', 'Veli Sel','Elif Ece Gul Demir'};
        bc.create(customerList);
        List<Contact> multiAccConTest=[ select Id,Account.Id, Account.Name, firstName, lastName,AccountId from Contact]; //child to parent
        for( Contact singleAccConTest:multiAccConTest){
            system.assertEquals(singleAccConTest.Account.id,singleAccConTest.Accountid);
           // system.assertEquals(singleAccConTest.Account.name,singleAccConTest.name);
        }
       
    }

}