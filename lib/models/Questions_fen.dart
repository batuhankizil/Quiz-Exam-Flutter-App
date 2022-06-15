class QuestionFen {
  final int id, answer;
  final String question;
  final List<String> options;

  QuestionFen({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data_fen = [
  {
    "id": 1,
    "question":
        "Halil : x = v . t bağıntısı modellemedir.\n\nSu : Bir elektrik yükünün etrafındaki elektrik alan çizgileri modellemedir.\nCem : Yerden belirli bir yükseklikten serbest bırakılan cismin yere düşmesi modellemedir.\n\nBuna göre, hangi öğrencilerin verdiği cevaplar doğrudur?",
    "options": ['Yalnız Halil', 'Yalnız Su', 'Yalnız Cem', 'Halil ve Su'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Eşit kare bölmelendirilmiş düzlemde türdeş yay üzerinde oluşturulmuş X ve Y atmaları oklar yönünde şekildeki gibi ilerliyorlar.\n\nAtmalar saniyede 1 bölme ilerlediklerine göre, kaç saniye sonra atmalar bir an için hareketsizmiş gibi görünürler?",
    "options": ['9', '8', '7', '6'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Deniz seviyesinde ağzı açık bir kapta bulunan arı X sıvısının ısıtılmasına ait sıcaklık-zaman grafiği yukarıda verilmiştir.\n\nGrafiğe göre arı X sıvısıyla ilgili aşağıdaki ifadelerden hangisi yanlıştır?",
    "options": ['I. ve II. bölgede madde akışkandır', 'Normal kaynama noktası 78 °C dir', '6. dakikada madde heterojen\ngörünümlüdür', 'II. bölgede X sıvısının buhar\nbasıncı artar'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "X maddesiyle ilgili,\n\n• Karışımdır.\n• Oda koşullarında maddenin en düzenli hâlindedir.\n\nBuna göre X maddesi aşağıdakilerden hangisi olabilir?",
    "options": ['Çay şekeri', 'Kireç taşı', 'Çelik', 'Altın'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Tüm canlılarda,\n\nI. solunumla enerji üretme,\nII. organik molekülleri birbirine dönüştürme,\nIII. enzim kullanabilme\n\nolaylarından hangileri ortaktır?",
    "options": ['Yalnız I', 'Yalnız II', 'I ve II', 'Hepsi'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Bir molekül yağ sentezi sırasıda aşağıdakilerden hangisi azalır?",
    "options": ['ATP', 'Enzim', 'pH', 'Ester bağı'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Mitokondrilerde aşağıdakilerden hangisinin oluşması beklenmez?",
    "options": ['DNA', 'Oksijen', 'Protein', 'Karbondioksit'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Trafiğe kapalı bir alanda, doğrusal yolda yapılan test sürüşünde, A ve B otomobillerinin durgun halden, düzgün hızlanarak 100 km/h hıza ulaşmaları için geçen minimum süreler belirlenmiştir.\n\nBu süreler birbirinden farklı olduğuna göre, bu otomobillerin aşağıdaki niceliklerinden hangileri birbiri ile karşılaştırılabilir?",
    "options": ['İvme büyüklüğü', 'Verim', 'Birim zamandaki yakıt\ntüketimi', 'Maksimum hız'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "Kimya bilimi;\n\nI. Saç boyaları, saç jöleleri gibi kozmetik ürünler\nII. Mürekkep, tebeşir gibi kırtasiye malzemeleri\nIII. Cam, seramik gibi yapı malzemeleri\n\nmaddelerinden hangilerinin üretimi ile ilgilenir?",
    "options": ['Yalnız I', 'Yalnız II', 'I ve II', 'II ve III'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Deterjanlarla ilgili aşağıdaki ifadelerden hangisi yanlıştır?",
    "options": ['Üretimlerinde petrol türevi\nmaddeler kullanılır', 'Bileşenlerinin insan vücuduna\nzararlı etkileri vardır', 'Çevreye sabunlara göre daha\nfazla zarar verirler', 'Tekstil ürünlerini sabunlara\ngöre daha çok yıpratırlar.'],
    "answer_index": 2,
  },

];
