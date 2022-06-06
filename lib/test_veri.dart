import './soru.dart';

class TestVeri {
  List<Soru> soruBankasi = [
    Soru(
        soruMetni: '"Can kurtaran" kelimesi doğru yazılmıştır', soruYaniti: false),
    Soru(
        soruMetni: '"İnsanların sözlerini dikkatle dinlemek alışkanlığını edinin" cümlesinde yazım yanlışı yoktur',
        soruYaniti: true),
    Soru(soruMetni: '328 ayısı 3 ile bölünebilir', soruYaniti: false),
    Soru(soruMetni: '7 Asal bir sayıdır', soruYaniti: false),
    Soru(
        soruMetni: '"abc = 100 . a + 10 . b + c" İfadesi doğrudur',
        soruYaniti: true),
    /*Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true),
    Soru(soruMetni: 'Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true),*/
    Soru(soruMetni: 'Test Bitti', soruYaniti: true),
  ];
}
