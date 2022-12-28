public class okul {
    //properties 
    public String isim;  //2 method getisim,setisim(string okulAdi) 
    private integer ogrenciSayisi;  //2 method getOgrsayisi, setOgrSayisi
    
	//constructor method
    public okul(string okulAdi){
       system.debug('okul constructor islemi calistiriliyor') ;
       setisim(okulAdi);
       system.debug(isim+' isimli okul olusturuldu');   
    }
    //methods
    public void setisim(string okulAdi){
    	isim=okulAdi;        
    }
    public string getisim(){
        return isim;
    }
    public void setogrenciSayisi(integer ogrSayisi){
        ogrenciSayisi=ogrSayisi;        
    }
    public  integer getogrenciSayisi(){
        return ogrenciSayisi;
    }    
}