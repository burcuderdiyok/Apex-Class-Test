@isTest
public class calculateTest {
    
    @isTest
    public static void sum1(){
        calculate calc=new calculate();
        integer result=calc.sum(10,20);
        system.assertEquals(30 , result);
    }
    @isTest
    public static void sum2(){
        calculate calc=new calculate();
        integer result=calc.sum(-10,-20);
        system.assertEquals(-30 , result);
    }
    @isTest
    public static void sum3(){
        calculate calc=new calculate();
        integer result=calc.sum(0,-20);
        system.assertEquals(-20 , result);
    }
    @isTest
    public static void sub1(){
        calculate calc=new calculate();
        integer result=calc.sub(5,20);
        system.assertEquals(-15, result);
    }
    @isTest
    public static void sub2(){
        calculate calc=new calculate();
        integer result=calc.sub(-5,-2);
        system.assertEquals(-3, result);
    }
    @isTest
    public static void sub3(){
        calculate calc=new calculate();
        integer result=calc.sub(5,-2);
        system.assertEquals(7, result);
    }
    @isTest
    public static void mul1(){
        calculate calc=new calculate();
        integer result=calc.mul(5,-2);
        system.assertEquals(-10, result);
    }    
    @isTest
    public static void div1(){
        calculate calc=new calculate();    
        decimal result=calc.div(10,2);     
                                           
        system.assertEquals(5, result);
    }
    @isTest
    public static void div2(){
        calculate calc=new calculate();    
        decimal result=calc.div(10,20);     
                                           
        system.assertEquals(0.5, result);
    } 
    @isTest
    public static void div3(){
        calculate calc=new calculate();    
        decimal result=calc.div(10,0);     
                                           
        system.assertEquals(null, result);
    }     
}