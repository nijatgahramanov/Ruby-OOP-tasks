class Sekil #diger fonksiyonlarina arayuz saglayan soyut sinif
    def bilgi_al #bilgi_al metodu asagida gosterilen figurler olculeri hakkinda bilgi alir
      Iki_boyutlu_sekil.ikiboyut_bilgi
      Uc_boyutlu_sekil.ucboyut_bilgi
      Kare.kare_bilgi
      Cember.cember_bilgi
      Kup.kup_bilgi
      Kure.kure_bilgi
    end
    def yazdir #alinan bilgileri islendikten sonra ekrana yazdirir
      Iki_boyutlu_sekil.ikiboyut_yazdir 
      Uc_boyutlu_sekil.ucboyut_yazdir
      Kare.kare_yazdir
      Cember.cember_yazdir
      Kup.kup_yazdir
      Kure.kure_yazdir
      
    end
    def alan(a,b) #asagida verilen figurlerin alanlari isteniyor,bu method bunun icin yazildi
      a * b
    end
    def hacim(j, k, i) #bu method asagidaki figurlerin hacmi istendigi icin yazildi
      j * k * i
    end
    def hesapla #bu method istenen alan ve hacimleri hesaplamak icin yazildi
      Kare.kare_alan
      Cember.cember_alan
      Kup.kup_alan
      Kup.kup_hacim
      Kure.kure_alan
      Kure.kure_hacim
    end
  end
  
  class Iki_boyutlu_sekil < Sekil #bu sinif sekil classindan turetilmistir,yani sekil sinifindan miras alir
    def self.ikiboyut_bilgi #Bu method X ve Y koordinatlari hakkinda kullanicidan  bilgi alir
      print "X degerini giriniz: "
      @@x = gets.chomp!
      print "Y degerini giriniz: "
      @@y = gets.chomp!
    end
    def self.ikiboyut_yazdir #Bu method kullanicidan alinan bilgileri ekrana yazdirir
      puts "X noktasinin koordinati: #{@@x}"
      puts "Y noktasinin koordinati: #{@@y}"
      puts "*************************************************"
    end
  end
  class Uc_boyutlu_sekil < Iki_boyutlu_sekil #Bu sinif ikiboyutlusekil sinfindan miras alir,yani ondan turetilmistir
    def self.ucboyut_bilgi #Bu method kullanicidan Z nin koordinat degerini alir
      print "Z degerini giriniz: "
      @z = gets.chomp!
    end
    def self.ucboyut_yazdir #Kullanicidan alinan X,Y ve Z degerini ekrana yazdirir
      puts "X noktasinin koordinati: #{@@x}"
      puts "Y noktasinin koordinati: #{@@y}" 
      puts "Z noktasinin koordinati: #{@z}"
      puts "*************************************************"
    end
  end
  
  class Kare < Iki_boyutlu_sekil #Bu sinif ikiboyutlu sekil sinfindan turetilmistir,yani ondan miras alir
    def self.kare_bilgi #Kullanicidan karenin olculeri hakkinda bilgi alir
       print "Kareninin kenar uzunlugunu giriniz: "
       @karenin_kenari=gets.chomp.to_i
    end
    def self.kare_alan #Burda karealani adinda method tanimlanir 
       @karenin_alani=Sekil.new.alan(@karenin_kenari, @karenin_kenari)
    end
    def self.kare_yazdir #Bu method karenin parametrelerini ekrana yazdirir
      puts "Karenin kenar uzunlugu: #{@karenin_kenari}"
      puts "Karenin alani: #{@karenin_alani}"
      puts "*************************************************"
    end
  end

  class Kup < Uc_boyutlu_sekil #Bu sinif ucboyutlusekil sinifinda turetilmmistir,yani ondan miras alir
    def self.kup_bilgi #Bu method kupun kenar uzunlugu hakkinda kullanicidan bilgi alir
      print "Kupun kenar uzunlugunu giriniz: "
      @kupun_kenari = gets.chomp.to_i
      @v = @kupun_kenari*@kupun_kenari #kupun kenar uzunlugu karesini bir degiskene tanimlandi
      @a = 6
      print "Hacim arttirma miktarini giriniz: " #kullanicidan hacim arttirma miktarini alir
      @kupu_artir = gets.chomp.to_i 
    end
  
    def self.kup_alan #Bu method kupun alanini hesaplamak icin tanimlanmistir
      @kupun_alani = Sekil.new.alan(@a, @v)
    end
    def self.kup_hacim #Bu method kupun hacmini hesaplamak icin tanimlanmistir
      @kupun_hacmi = Sekil.new.hacim(@kupun_kenari, @kupun_kenari, @kupun_kenari)
    end
    def self.kup_yazdir #Bu method hesaplanan alan,hacim ve yeni hacimi ekrana yazdirir
      puts "Kupun alani: #{@kupun_alani}"
      puts "Kupun hacmi: #{@kupun_hacmi}"
      puts "Kupun yeni hacim degeri: #{@kupu_artir}"
      puts "*************************************************"
    end
  end
  
  class Cember < Iki_boyutlu_sekil #Bu sinif ikiboyutlusekil sinifindan turetilmistir,yani ondan miras alir
     def self.cember_bilgi #Bu method cember hakkinda kullanicidan bilgi almak icin tanimlanmistir
       print "Cemberin radiusunu giriniz: "
       @radius = gets.chomp.to_i 
       @p = 3.14
       @r = @radius*@radius
     end
     def self.cember_alan #Bu method cemberin alaninin hesaplanmasi icin yazilmistir
       @cemberin_alani=Sekil.new.alan(@r,@p)
     end
     def self.cember_yazdir #Bu method hesaplanan cember alanini ekrana yazdirir
        puts "Cemberin alani: #{@cemberin_alani}"
       puts "*************************************************"
     end
  end
  
  class Kure < Uc_boyutlu_sekil #Bu sinif ucboyutlu sekil sinfindan turetilmistir,yani ondan miras alir
   
    def self.kure_bilgi #Kurenin olculeri hakkinda kullanicidan bilgi alir
      print "Kurenin radiusunu giriniz: "
      @kure_radius = gets.chomp.to_i
      print "Kurenin hacim arttirma degerini giriniz: "
      @kureyi_artir = gets.chomp.to_i
      @r =  @kure_radius * @kure_radius #kurenin yaricapinin karesi r degiskenine esitlendi
      @p = 4 * 3.14
      @a = 1.33
      @p2 = 3.14
      @b = @r*@kure_radius
    end
  
    def self.kure_alan #Bu method kurenin alaninin hesaplanmasi icin yazilmistir
      @kurenin_alani = Sekil.new.alan(@p,@r)
    end
    def self.kure_hacim #Bu method kurenin hacminin hesaplanmasi icin yazilmistir
      @kurenin_hacmi = Sekil.new.hacim(@a, @p2, @b)
    end
    def self.kure_yazdir #Bu method hesaplanan kurenin alan,hacim ve yeni hacmini ekrana yazdirir
      puts "Kurenin alani: #{@kurenin_alani}"
      puts "Kurenin hacmi: #{@kurenin_hacmi}" 
      puts "Kurenin yeni hacmi: #{@kurenin_hacmi*@kureyi_artir}"
      puts "*************************************************"
    end
  end
  
  def main
    Sekil.new.hesapla #Soylenildigi gibi hesapla ve yazdir islemleri main methodunun icinde tanimlanmistir
    Sekil.new.yazdir
  
  end
  Sekil.new.bilgi_al
  main