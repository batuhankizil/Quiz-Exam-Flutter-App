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
        "1. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "2. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "3. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "4. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "5. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "6. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "7. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "8. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "9. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "10. Soru",
    "options": ['a', 'b', 'c', 'd'],
    "answer_index": 2,
  },

];
