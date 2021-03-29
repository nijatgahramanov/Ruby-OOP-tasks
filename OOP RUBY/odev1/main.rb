class Hasta_Covid_19
    attr_accessor :tcnumara, :ad, :soyad, :cinsiyet, :yas, :semptom, :kronik, :il, :temassay
    def initialize(tcnumara, ad, soyad, cinsiyet, yas, semptom, kronik, il, temassay)
        @tcnumara = tcnumara
        @ad = ad
        @soyad = soyad
        @cinsiyet = cinsiyet
        @yas = yas
        @semptom = semptom
        @kronik = kronik
        @il = il
        @temassay = temassay 
    end
end
hasta = Hasta_Covid_19.new(0, "", "", "", 0, 0, 0, "", 0)
say = 0
hasta.temassay=0
puts "Sağlık Bakanlığı Covid-19 Bilgi Sistemine Hoş Geldiniz"
while true
    print "Komut giriniz: "
    komut = gets.chomp
    case komut
    when"EKLE"
        print "Hastanın TC numarasını giriniz: "
        hasta.tcnumara = gets.chomp!
        print "Hastanın adını giriniz: "
        hasta.ad = gets.chomp!
        print "Hastanın soy adını giriniz: "
        hasta.soyad = gets.chomp!
        print "Hastanın cinsiyetini giriniz (Erkek/Kadın): "
        hasta.cinsiyet = gets.chomp!
        print "Hastanın yaşını giriniz: "
        hasta.yas = gets.chomp!
        print "Hastanın varsa semptomlarini belirtiniz yoksa 0 bilgisi giriniz: "
        hasta.semptom = gets.chomp!
        print "Hastanın varsa kronik rahatsızlıklarını belirtiniz yoksa 0 bilgisi giriniz: "
        hasta.kronik = gets.chomp!
        print "Hastanın bulunduğu ili giriniz: "
        hasta.il = gets.chomp!
        print "Hastanın temasda bulunduğu tahmini kişi sayısını belirtiniz yoksa 0 bilgisi giriniz:"
        hasta.temassay = gets.chomp!
        puts "------------"
        say += 1
    when "LISTELE"
        if say == 0
            puts "Toplam hasta sayısı: #{say}"
            puts "Toplam enfekte olması muhtemel kişi sayı: #{say}"
            puts "-------------"
        
        else
        
            puts "Toplam hasta sayısı:#{say} "
            puts "#{hasta.ad} " + "#{hasta.soyad} " + "#{hasta.cinsiyet} " + "#{hasta.yas} " + "#{hasta.semptom} " + "#{hasta.kronik} " + "#{hasta.il}"
            puts "Toplam enfekte olması muhtemel kişi sayı: #{hasta.temassay}"
            puts "------------"
        end
    when "CIKIS"
        puts "Sağlıklı günler dileriz"
        false
        exit
    else
        puts "Hatalı komut girdiniz"
    end
end