class QuestionMatematik {
  final int id, answer;
  final String question;
  final List<String> options;

  QuestionMatematik({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data_matematik = [
  {
    "id": 1,
    "question":
        "|π – 3| + |3 – π|",
    "options": ['2π – 6', 'π – 6', '0', '3 – π'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "–1 < a < 0 ve b < 0 olmak üzere,\n\nI. a – b\nII. a² – b",
    "options": ['1', '3', '5', '9'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Üç basamaklı bir A çift doğal sayısının 3 ile bölümünden kalan 2, 5 ile bölümünden kalan 4 tür.\nBuna göre, A nın en küçük değerinin 10 ile bölümünden kalan kaçtır?",
    "options": ['3', '4', '8', '11'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "A = {1, 2, a, b, x, y}\nC = {1, a, x}\n\nolmak üzere, C ⊆ B ⊂ A koşulunu sağlayan kaç farklı B kümesi tanımlanabilir?",
    "options": ['3', '4', '7', '12'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Z tam sayılar kümesi olmak üzere,\n\nA = [–3, 6]\nB = [–6, 3]",
    "options": ['-6', '-3', '1', '0'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Bir çorapçı çoraplarının çiftini 10 ¨ den satmaktadır. Bu çorapçı 10 adet ve daha fazla çift çorap alımı için %10 luk ve ayrıca 10 çift çoraptan sonraki her bir çorap için indirimli fiyattan bir %10 luk indirim daha yapıyor.\n\nBu çorapçıdan 24 çift çorap alan Fatih çorapçıya toplam kaç ¨ ödeme yapmıştır?",
    "options": ['196,2', '203,4', '272,8', '312,9'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Turan, Selami, Kamuran’ın çalışma hızları sırasıyla, 6v, 4v, 2v dir. Üçü bir işi beraber 6 saatte bitirmektedir. Aynı işi yapmak için işe başlıyorlar ve Turan işin yarısı bittiğinde işi bırakıyor. Kalan işi Selami ve Kamuran tamamlıyor.\n\nBuna göre, bu iş bitmesi gereken zamandan kaç saat daha geç bitmiştir?",
    "options": ['3', '4', '5', '6'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "y = x²+ 3x + 5\n\nparabolü üzerinde alınan bir A(a, b) noktasının koordinatları toplamının alabileceği en küçük değer kaçtır?",
    "options": ['-2', '-1', '0', '1'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "P(x²) = (a – 3)x³+ x²+ 2x + bx + 1\n\npolinomu için P(a + b) ifadesinin değeri kaçtır?",
    "options": ['2', '5', '6', '7'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Dik koordinat sisteminde, ABCD eşkenar dörtgen\nA(–7,0), B(3,0) ve D(–1,k)\n\nBuna göre, C köşesinin koordinatlar toplamı kaçtır?",
    "options": ['8', '11', '16', '17'],
    "answer_index": 3,
  },

];
