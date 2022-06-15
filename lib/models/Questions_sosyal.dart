class QuestionSosyal {
  final int id, answer;
  final String question;
  final List<String> options;

  QuestionSosyal({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data_sosyal = [
  {
    "id": 1,
    "question":
        "İlk Türk topluluklarında,\n– ordu-millet anlayışı görülmüş,\n– hayvancılık temel geçim kaynağı kabul edilmiştir.\n\nİlk Türk topluluklarına ait bu özellikler, aşağıdakilerden hangisi ile açıklanabilir?",
    "options": ['Bozkır kültürünün egemen olması', 'Veraset sisteminin uygulanması', 'Komşu devletlerle iyi \nilişkiler kurulması', 'Töre hukukunun uygulanması'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Osmanlı Devleti’nin yeni fethedilen bölgelere Müslümanları yerleştirmek şeklinde uyguladığı iskan politikasının, aşağıdaki amaçlardan hangisine yönelik olduğu söylenemez?",
    "options": ['Türklere yeni yurtlar bulmak', 'Fethedilen yerleri Türkleştirmek', 'Üretim faaliyetlerini artırmak', 'Asimilasyon politikası uygulamak'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Hayat, biz nereye dersek oraya gider. Böylesi bir güç bazen insana fazla gelir. Kararlarımızı sanki hayatımızı belirleyecek son kararmış gibi algılamaya başlarız. İşte o an, yazgımızın ipini topluma kaptırdığımız andır. Halbuki tercihlerimizi belirlemek ve hayatımızı değiştirmek her zaman bizim elimizde olacaktır.\nBu parçada açıklaması verilen felsefi görüş aşağıdakilerden hangisidir?",
    "options": ['Bentham’ın utilitarizmi', 'Sartre’ın egzistansiyalizmi', 'Kant’ın ödev ahlakı', 'Epiküros’un hedonizmi'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Kopernik ve Kepler’in gözlemleri sonucunda gelişen astronomi ve fizikteki matematikle temellendirilmiş deney ve gözleme dayanan bilgiler, Aristoteles’in kıyas yönteminin yıkılmasına, Bacon tarafından yeni bir mantığın kurulmasına olanak sağlamıştır.\nBuna göre, felsefi bilgiyle ilgili aşağıdakilerden hangisine ulaşılabilir?",
    "options": ['Filozofun yaşantısına bağlıdır', 'Evreni, doğayı ve insanı\nbütünüyle kavrar', 'Evrensel bilgileri konu edinir', 'Bilimdeki gelişmelerden etkilenir'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "Hegel, Alman idealizminin son büyük filozofudur. İdealizm; “maddeyi yaratan ruhtur, maddenin düşüncemiz dışında varlığı yoktur; nesneleri yaratan fikirlerimizdir” diyen felsefi bir görüştür.\nBu parçaya göre idealizm, aşağıdaki felsefi görüşlerden hangisinin karşıtıdır?",
    "options": ['Varlık maddedir diyen\nmateryalizmin', 'Varlık yoktur diyen nihilizmin', 'Varlık madde ve ruhtur\ndiyen düalizmin', 'Varlığın değiştiğini kabul\neden oluşçuluğun'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "İslam medeniyetinin etkisiyle gelişen bilimsel faaliyetler sadece İslam toplumunu değil Avrupa toplumunu da etkilemiş ve Avrupa’da Rönesans’ın yaşanmasına katkı sağlamıştır.\nAşağıdakilerden hangisi İslam Medeniyeti’nin Avrupalılarca tanınmasına yol açtığı söylenemez?",
    "options": ['Haçlı Seferleri', 'Endülüs Emevileri’nin\naçtığı medreseler', 'İtalyan tüccarlarla yapılan\nAkdeniz ticareti', 'İslam dininin Ortadoğu’da\nhızla yayılması'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "I. Savaş ganimetleri\nII. Vakıf gelirleri\nIII. Müsadere gelirleri\nIV. Cizye vergisi\n\nYukarıda verilen öncüllerden hangileri Osmanlı Devleti’nin gelirleri arasında gösterilebilir?",
    "options": ['Yalnız I', 'I ve II', 'I, II ve III', 'I, III ve IV'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Cumhuriyet Dönemi İnkılapları ile Türk toplumunda birlik ve beraberliğin oluşturulması amaçlanmıştır.\n\nBu duruma yönelik olarak yapılan aşağıdaki inkılaplardan hangisi toplumsal birlik ve beraberliği sağlamada diğerlerinden daha çok etkili olduğu savunulabilir?",
    "options": ['Türk Dil Kurumu’nun açılması', 'Türk Tarih Kurumu’nun açılması', 'Millet Mekteplerinin açılması', 'Harf inkılabının yapılması'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Avrupa’da eğitim almış devlet adamlarıyla, bazı aydınların tutumu ve özellikle de Avrupa’daki siyasi akımların etkisi, Osmanlı Devleti’nde XIX. yüzyıldan itibaren rejimi hedef alan gelişmelere neden olmuştur.\nBu durumun Osmanlı Devleti’nde aşağıdakilerden hangisi üzerinde etkili olduğu söylenemez?",
    "options": ['Halka seçme ve seçilme\nhakkının verilmesi', 'Azınlıklara din ve mezhep\nözgürlüğünün tanınması', 'Kanun-ı Esasi’nin kabul edilmesi', 'Çok partili sisteme geçilmesi'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Osmanlı Devleti’nde II. Meşrutiyet’in ilanı sonrasında Kanun-ıEsasi’de yapılan bir değişiklikle, siyasi parti kurma hakkı getirilerek çok partili hayata geçiş sağlanmıştır.\nBu değişikliğin aşağıdakilerden hangisi üzerinde hızlandırıcı bir etkisinin olduğu savunulabilir?",
    "options": ['Çok uluslu yapının korunmasında', 'Siyasal yaşama katılımın\nartmasında', 'Merkeziyetçi yönetimin\ngüçlenmesinde', 'Kadın haklarının genişletilmesinde'],
    "answer_index": 1,
  },

];
