public class helloCohort2ServerController {
	@auraEnabled
    public static decimal sum(decimal numberX, decimal numberY){
        decimal returnValue=numberX/numberY;
        return returnValue;
    }
}