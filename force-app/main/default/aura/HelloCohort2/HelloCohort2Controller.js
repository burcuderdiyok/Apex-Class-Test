({
    calculate : function(component, event, helper) {
       var num1=component.get("v.numX");
       var num2=component.get("v.numY");
        
       var serverController = component.get("c.sum");
       
       // setParams ile sum(Decimal numberX, Decimal numberY){ numberY ve numberY  JSON formatında ver...
       
        serverController.setParams({
            "numberX":num1,
            "numberY":num2
         });
        
    
        // setCallback ile apex return ettiği değerleri nasıl değerlendireceğimizi yazacağız. 
        
        serverController.setCallback(this,function(response){
            
           
            var resState = response.getState();
            var calculationResult = response.getReturnValue();
            
           
            
            if(resState==='SUCCESS'){
                component.set("v.result",calculationResult);
                
            } else {
                var errorMessage = response.getError()[0].message;
                component.set("v.errorMsg",errorMessage);
                
                
            }
            
        });
        
        
        
        // enqueueAction ile bu apex'e gönderme ve alma işlemini başlatıyorum...
        
        $A.enqueueAction(serverController);
        
      
        
    }
})