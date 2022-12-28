@isTest
public class createAccWContTest {
	@isTest
    public static void createTest1(){
        createAccWCont testAccCon= new createAccWCont();
        testAccCon.create('Test Acc 1', 'Worker Test FN 1', 'Worker Test LN 1');
        Account testAcc=[ select id, Name from Account];
        system.debug (testAcc);
        Contact testCon=[ select id, firstName, lastName, AccountId from Contact];
        system.debug (testCon);
        //system.assertEquals(1,testAcc.size());
        //system.assertEquals(1,testCon.size());
        system.assertEquals('Test Acc 1',testAcc.Name);
        system.assertEquals('Worker Test FN 1',testCon.firstName);
        system.assertEquals('Worker Test LN 1',testCon.lastName);
        system.assertEquals(testAcc.Id, testCon.AccountId);
    }
}