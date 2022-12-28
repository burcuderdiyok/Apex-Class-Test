public class calculate {
    
    
    public Integer sum(Integer x, integer y){
        integer result=x+y;
        return result;
    }
    public Integer sub(Integer x, integer y){
        integer result=x-y;
        return result;
    }
    public Integer mul(Integer x, integer y){
        integer result=x*y;
        return result;
    }
    public Decimal div(Integer x, Integer y){      
        Decimal result;
        try{
            result=Decimal.valueOf(x) / Decimal.valueOf(y);
        }catch(Exception e){
            System.debug('Error  : '+ e.getMessage() );
        }
                                     
        return result;
    }
    

}