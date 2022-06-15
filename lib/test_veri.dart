import './soru.dart';

class TestVeri {
  List<Soru> soruBankasi = [
    Soru(soruMetni: '"Can kurtaran" kelimesi doğru yazılmıştır', soruYaniti: false),
    Soru(soruMetni: '"İnsanların sözlerini dikkatle dinlemek alışkanlığını edinin" cümlesinde yazım yanlışı yoktur', soruYaniti: true),
    Soru(soruMetni: '328 ayısı 3 ile bölünebilir', soruYaniti: false),
    Soru(soruMetni: '7 Asal bir sayıdır', soruYaniti: false),
    Soru(soruMetni: '"abc = 100 . a + 10 . b + c" İfadesi doğrudur', soruYaniti: true),
    Soru(soruMetni: '"Belleğimizin derinliklerinden süzülüp gelen" \n\n sözünün cümleye kattığı anlam "Hafızamızda eskiden yer etmiş şeyler"dir. ', soruYaniti: true),
    Soru(soruMetni: 'Zeynep, bu şehirden ya ben ya da Ceyda gidecek, diyordu. \n\n Bu cümledeki anlatım bozukluğunun nedeni "Özne - yüklem uyumsuzluğu"dur.', soruYaniti: true),
    Soru(soruMetni: 'Mecliste arif ol, kelamı dinle \n El iki söylerse sen birin söyle \n  Elinden geldikçe iyilik eyle \n Hatıra dokunup yıkıcı olma \n\n Bu dörtlükde Yansıma sözcüğe yer verilmiştir.', soruYaniti: false),
    Soru(soruMetni: '"O gelecek diye büyük bir seramoni hazırlamıştık" Cümlesinde yazım yanlışı yoktur', soruYaniti: false),
    Soru(soruMetni: 'Tiyatronun başlangıcında tragedya ve komedya türleri kesinlikle birbirinden ayrılmıştı. Bu ayrım klasik dönemin sonuna dek sürdürüldü. Modern tiyatroda ise böylesine  kesin bir tür ayrımı yapılmıyor. Güldürü ve ağlatı öğeleri yan yana kullanılabiliyor. Ya da tragedyanın seyirciyi sahneyle özleştirici heyecanları ile komedyanın sahneyi uzak açıdan değerlendirici düşüncesi iç içe sunulabiliyor. \n\n\n Bu parçanın anlatımında ağır basan Karşılaştırmadır', soruYaniti: true),
    Soru(soruMetni: 'Malazgirt Savaşından sonra Anadolu’da Büyük Selçuklulara bağlı beyliklerin ortaya çıkmasında \n "Fethedilen bölgenin yönetiminin fetheden komutana verilmesi" \n etkili olmuştur', soruYaniti: true),
    Soru(soruMetni: 'İklim özellikleri düşünüldüğünde "Çernezyomlar" Türkiye’de görülmez', soruYaniti: false),
    Soru(soruMetni: 'Bir grup filozof “Bilebilir miyiz?” sorusuna “Bilmiyoruz,bilemeyiz.” şeklinde cevap verirler. Onlar “İnsan bilemez.” ve “Ne bilmediğini de bilemez.” görüşündedir. \n\n Bu açıklamada üzerinde durulan felsefi görüş "Septisizm"dir', soruYaniti: true),
    Soru(soruMetni: '2071^3 = 888260K911 \n\n ifadesinde K 4’dür', soruYaniti: false),
    Soru(soruMetni: 'Eni 450 metre, boyu 750 metre olan dikdörtgen şeklindeki bir okul bahçesinin etrafına her köşeye birer tane gelecek şekilde eşit aralıklarla ağaç dikilecektir. \n\n\n İki ağaç arası mesafe tam sayı olarak 12 farklı değer alabilir', soruYaniti: true),
    Soru(soruMetni: 'Dört kapı ve bunlara ait olan dört farklı anahtar bulunmaktadır. Hangi anahtarın hangi kapıyı açtığı bilinmemektedir \n\n Buna göre, 7 deneme yapıldığında kapıların anahtarları kesin olarak bulunabilir', soruYaniti: false),
    Soru(soruMetni: 'Test Bitti, Başarılar', soruYaniti: true),
  ];
}
