public class okul2 {
    //private secip set methodu kullaniyoruz
    private string isim;            // 1 setisim(string okulAdi)            ve 1 getisim
    private integer ogrenciSayisi;  //1 setogrenciSayisi(integer ogrSayisi) ve 1 getogrenciSayisi methodu var
    private static integer toplamOgrenciSayisi;
    private list<string> ogrenciListesi;
    
    public okul2(string okulAdi){
        system.debug('okul constructor calisiyor');
        setisim(okulAdi);
        system.debug(isim+' isimli okul olusturuldu');
        ogrenciSayisi=0;
        toplamOgrenciSayisi=0;
        ogrenciListesi=new List<string>();
    } 
    public void setisim(string okulAdi){   //static degil-->her kopyaya ayri ayri isim verecegiz
       isim=okulAdi; 
    }
    public String getisim(){
       return  isim;
    }
    public  void setogrenciSayisi(integer ogrSayisi){
       ogrenciSayisi=ogrSayisi; 
       toplamOgrenciSayisi+=ogrenciSayisi;
    }
    public integer getogrenciSayisi(){
        return ogrenciSayisi;
    }    
    public static integer gettoplamOgrenciSayisi(){
        return  toplamOgrenciSayisi;  
    }
    public void setogrenciListesi(string yeniOgrenci){
        ogrenciListesi.add(yeniOgrenci);
        ogrenciSayisi++;
        toplamOgrenciSayisi++;
    }
    public List<string> getogrenciListesi(){
        return ogrenciListesi;
    }

}