public class ITClass {
	public integer salesforce=0;
    public integer aws=0;
    public static integer allStudent=0;
    
    public integer getSalesforce(){
        return salesforce;
    }
    
    public void setSalesforce(integer num){
        salesforce+=num;
        allStudent+=num;
    }
    
    public integer getAws(){
        return aws;
    }
    
    public void setAws(integer num){
        aws+=num;
        allStudent+=num;
    }
    
    public static integer getAllStudent(){
        return allStudent;
    }
    
    
}