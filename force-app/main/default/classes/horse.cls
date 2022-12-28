public class horse {                          
   
    private  Integer age=0;                   
    private List<String>  education=new List<String>();
    public  String race;
    private  String name;
    private integer wonRace=0;                     
    private static integer wonRaceforAll=0;
    private string rank='elementary';
    
    
    public void setWonRace(){
        wonRace+=1;
        wonRaceforAll+=1;
        
    }
    public integer getWonRace(){
	return WonRace;
        
    }
    
    public string rank(){
	return rank;
        
    }
    
    public Integer wonRaceforResult(){
    return wonRaceforAll;
    }
    
    public static Integer wonRaceforAll(){ 
    return wonRaceforAll;
    }
    
    public integer getAge(){                   
    return age;
    }
    
    public void setAge( Integer ageoftheHorse){  
        //polymorphism
    	age=ageoftheHorse;
   		//system.debug('horse age is : '+age);
	}
    public void setAge(){                         
        age+=1;
        //system.debug('your horse is getting older : '+age);
    }
    public  void eat(){
        system.debug(name+' is eating ');
    }
    
    public void train(string trainType){
        system.debug('This horse who named is '+ name +' is trained by'+trainType);
        education.add(trainType);
    }
    
    public void setName(string horseName){
        name=horseName;
        system.debug('Horse named as: '+horseName);
    }
    public string getName (){
        return name;
    }
    
   
}