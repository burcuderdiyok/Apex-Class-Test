public class AccountTriggerHelper {
    public void NameUpdate(List<Account> multiAcc){
        for(Account singleAcc:multiAcc){
		singleAcc.name= singleAcc.name.toUpperCase();
        }
    }
    public void validation( List<Account> multiAcc){
        for(Account singleAcc:multiAcc){
            //phone validation rules
        	if(string.isBlank(singleAcc.phone)){
        	singleAcc.phone.addError('no phone number');
        	}
        }
    }
}