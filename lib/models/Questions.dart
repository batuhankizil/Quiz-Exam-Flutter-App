class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "“Ünlüyle biten bir sözcüğe tamlayan eki getirildiğinde ek ile sözcük arasına ‘n’ kaynaştırma harfi girer.” \n Aşağıdakilerin hangisinde bu kurala uymayan bir kullanım vardır?",
    "options": ['Dün arabanın plakasını \ndeğiştirmek için uğraştım.', 'Gömleğimi daha çabuk kuruması \niçin pencerenin önüne astım.', 'Bu paranın neyin karşılığı \nolduğunu bana söylemedi.', 'Çocuklardan biri kedinin \ntasmasını takmaya çalışıyor.'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "Aşağıdaki cümlelerin hangisinde sayıların yazımıyla ilgili bir yanlışlık yapılmıştır?",
    "options": ['Yeni teknikler sayesinde burada\ntarım üretimi tam 2,5 kat artmış.', 'Yarın sizinle 14:30’da \ntoplantı salonunda görüşebiliriz.', 'Osmanlı Devleti’nden Amerika’ya \ndört yüz bin kişi göç etmiş.', 'Hindistan’da yaklaşık 1 milyar \n500 milyon insan yaşıyor.'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Yeni iletişim teknolojileriyle ortaya çıkan sosyal medya, bireylerin her geçen gün daha fazla bağlandığı bir ortam olması sebebiyle kurumların da dikkatini çekmektedir.\nBu cümlede aşağıdakilerden hangisi yoktur?",
    "options": ['Adıl', 'Belirteç', 'Ön ad', 'Bağlaç'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Kemalettin Tuğcu, çocuk ve genç okurların macera ihtiyaçlarını karşılayabilmiş bir yazarımızdır. O, hayali geniş, kalemi açık bir yazardır. Soluklanmadan okursunuz romanlarını. Romanlarında olaylar hızlı seyreder, merak unsuru oldukça kuvvetlidir. Eski Bir Masal işte bu romanlarından biridir.\nBu parçada altı çizili sözle asıl anlatılmak istenen aşağıdakilerden hangisidir?",
    "options": ['Akıcı bir anlatıma sahip olmak', 'Geniş bir hayal gücü olmak', 'Biçem bakımından orijinal olmak', 'Yardımcı olayları dahil etmek'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Fuat Köprülü’nün, zamanında, (I) ''Bütün Türk edebiyatını (II) terazinin bir gözüne, Dede Korkut’u da öbür gözüne (III) koysanız, yine Dede Korkut ağır basar.” dediği (IV) eserle ilgili günümüzde hâlâ yeni gelişmelerin (V) yaşanıyor olması harika bir olay. Bu cümlede numaralanmış sözcüklerin hangisi “üçüncü tekil kişi iyelik eki” almamıştır?",
    "options": ['I', 'II', 'III', 'IV'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Türk dizi sektörü (I) öyle oyuncuları (II) barındırıyor ki dizinin fragmanı (III) görüldüğünde -fragmanı geçtim, oyuncunun dizide rol alacağı (IV) duyulduğunda- oyuncunun nasıl bir tiple karşınızda olacağı az çok herkes tarafından kestirilebilir. Dizinin bölüm sayısı (V) ise en çok merak edilen konulardan. Numaralanmış sözcüklerden hangisi,“belirtme durumu eki” almıştır?",
    "options": ['I', 'II', 'III', 'IV'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Üstelik ben bir şairim, bilemezsiniz Her akşam rüzgâr gibi sokaklara düşerek Elleri ceplerinde birisi gezer Bir yürek taşır göğsünde duygulu, ürkek",
    "options": ['Ek eylem', 'Yeterlik fiili', 'İlgi eki', 'Kişi eki'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "Şimdiye kadar gördüğüm şehirler içinde Bursa kadar belirli bir devri karakteristik özellikleriyle tanıtan bir başkasını hatırlamıyorum.\nBu cümlede aşağıdakilerden hangisi yoktur?",
    "options": ['Geçişli yüklem', 'Sıfat-fiil öbeği', 'Edat öbeği', 'Bağlaç'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Uçan sinekleri suyun içinden vuran balıklar ( ) fırlatma rampasından atılan füzeler gibi ilerleyen bukalemun dili ( ) düşmanını uzaktan nakavt edebilen karidesler ( ) Bu tür avcı hayvanlardaki “silahlar” hayrete düşürüyor insanı ( )\nSırasıyla noktalama işaretleri?",
    "options": ['(,) (;) (.) (.)', '(,) (,) (!) (...)', '(-) (-) (...) (...)', '(,) (,) (...) (.)'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "O gece, yemekte olan her şeyi tekrar düşündü. Salıncağı yaptığı o öğleüstü arkadaşının ona ne kadar iyi davrandığını, dizindeki kanamayı nasıl durdurduğunu hatırladı. Aslında çenesini sımsıkı kapalı tutup hiç sorun çıkarmaması en iyisiydi. Bazı insanlar bu gerginlikten hoşlanmıyordu.\nBu parçada aşağıdaki ses olaylarından hangisi yoktur?",
    "options": ['Ünsüz yumuşaması', 'Ünsüz düşmesi', 'Ünlü düşmesi', 'Ünsüz benzeşmesi'],
    "answer_index": 1,
  },

];
