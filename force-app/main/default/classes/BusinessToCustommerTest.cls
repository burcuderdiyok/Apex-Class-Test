@isTest
public class BusinessToCustommerTest {   // TEST CLASS ------------------------
    
    @testSetup
    public static void setup(){
         // prepare test DATA
        BusinessToCustommer b2c = New BusinessToCustommer();        
        List<String> listOfCustomerTEST = New List<String>();        
        for(Integer counter=1;counter<=10;counter++){            
            listOfCustomerTEST.add('Test '+counter+' Test'+counter);        
        }        
        b2c.create(listOfCustomerTEST); 
    }
    
    
    @isTest
    public static void create2ParamsTest1(){
        // read test prep data from setup method. ( test setup )
       
         // Start Test
        Test.startTest();
  
        List<Contact> multiAccConTest =[SELECT id, Account.id, Account.name, name, firstName,lastName,Accountid FROM Contact];   // child to parent 
       
        system.debug(multiAccConTest);
        
        for(Contact singleTest:multiAccConTest){
            
            System.debug('Test Class : '+singleTest);
             System.assertEquals(singleTest.Account.id, singleTest.Accountid);
            System.assertEquals(singleTest.Account.name, singleTest.name);
            System.assert(string.isNotBlank(singleTest.Accountid));
            System.assert(string.isNotBlank(singleTest.Account.id));
        }
        Test.stopTest(); 
         // STop Test
     }
}