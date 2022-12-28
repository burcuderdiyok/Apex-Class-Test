@istest
public class AccountTriggerTest {
	@istest
    public static void updateName_SingleAcc_1(){
        //prep data
        Account singleTestAcc=new Account (name='test11', phone='12345');
        insert singleTestAcc;
        //test
        Account singleResultAcc=[select id, name , phone from account];
        system.debug('test result is : '+singleResultAcc);
        system.assert(string.isNotBlank(singleResultAcc.Id));
        system.assertEquals('TEST11', singleResultAcc.name);     
    }
    @istest
    public static void updateName_MultiAcc_1(){
        //prep data
        List<Account> multiAcc=new List<Account> ();
        for( integer i=1; i<=10; i++){
        	Account singleTestAcc=new Account (name='test'+i, phone='12345'+i); 
            multiAcc.add(singleTestAcc);
        }
        insert multiAcc;
        //test
        List<Account> resultAcc=[select id, name , phone from account];
        system.assertEquals(10, resultAcc.size()); 
        integer i=1;
        for(Account acc:resultAcc){
            system.assertEquals('TEST'+i, acc.name);
            i++;
        }
    }
    @istest
    public static void updateName_SingleAcc_3(){
        //prep data
        Account singleTestAcc=new Account (name='test11');
        
        string Errormsg;
        try{
          insert singleTestAcc;  
        }catch(Exception e){
            Errormsg=e.getMessage();
              }
        //test
        system.assert(Errormsg.contains('Phone'));        
        
    }
}