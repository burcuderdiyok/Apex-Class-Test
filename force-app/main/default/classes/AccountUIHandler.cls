public class AccountUIHandler {
    @auraEnabled
    public static String create(String accountName){
        
        String returnText;
        
        Account singleAcc = New Account(Name=accountName);
        
        try{
            
             insert singleAcc;
            returnText='Account Created with '+singleAcc.id ;
            
        }catch(Exception e){
            returnText=e.getMessage();
        }
        
        
    return returnText;
        
    }

    @AuraEnabled(cacheable=true)
    
    public static List<Account> retrieve(){
        List<Account> multiAcc= New List<Account>();
        try {
            multiAcc=[SELECT id, Name, Phone, Industry,CreatedDate FROM Account 
                        ORDER BY CreatedDate DESC LIMIT 10];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAcc;
    }

}