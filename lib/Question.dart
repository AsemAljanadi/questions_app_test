class Question {
  final String _questionText;
  final String _questionImagePath;
  final bool _questionAnswer;

  Question({
    required String questionText,
    required String questionImagePath,
    required bool questionAnswer,
  }) : _questionText = questionText,
       _questionImagePath = questionImagePath,
       _questionAnswer = questionAnswer;

  String get questionText => _questionText;
  String get questionImagePath => _questionImagePath;
  bool get questionAnswer => _questionAnswer;
}

class AllQuestions {
  List<Question> allQuestionsList = [
    Question(
      questionText: 'عدد كواكب المجموعة الشمسية هو ثمانية كواكب',
      questionImagePath: 'assets/image-1.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'القطط هي من الحيوانات اللاحمة',
      questionImagePath: 'assets/image-2.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'توجد الصين في القارة الإفريقية',
      questionImagePath: 'assets/image-3.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الأرض مسطحة وليست كروية',
      questionImagePath: 'assets/image-4.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'باستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم',
      questionImagePath: 'assets/image-5.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'الشمس تدور حول الأرض والأرض تدور حول القمر',
      questionImagePath: 'assets/image-6.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الحيوانات لا تشعر بالألم',
      questionImagePath: 'assets/image-7.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'عدد كواكب المجموعة الشمسية هو ثمانية كواكب',
      questionImagePath: 'assets/image-1.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'القطط هي من الحيوانات اللاحمة',
      questionImagePath: 'assets/image-2.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'توجد الصين في القارة الإفريقية',
      questionImagePath: 'assets/image-3.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الأرض مسطحة وليست كروية',
      questionImagePath: 'assets/image-4.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'باستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم',
      questionImagePath: 'assets/image-5.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'الشمس تدور حول الأرض والأرض تدور حول القمر',
      questionImagePath: 'assets/image-6.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الحيوانات لا تشعر بالألم',
      questionImagePath: 'assets/image-7.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'عدد كواكب المجموعة الشمسية هو ثمانية كواكب',
      questionImagePath: 'assets/image-1.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'القطط هي من الحيوانات اللاحمة',
      questionImagePath: 'assets/image-2.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'توجد الصين في القارة الإفريقية',
      questionImagePath: 'assets/image-3.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الأرض مسطحة وليست كروية',
      questionImagePath: 'assets/image-4.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'باستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم',
      questionImagePath: 'assets/image-5.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'الشمس تدور حول الأرض والأرض تدور حول القمر',
      questionImagePath: 'assets/image-6.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الحيوانات لا تشعر بالألم',
      questionImagePath: 'assets/image-7.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'عدد كواكب المجموعة الشمسية هو ثمانية كواكب',
      questionImagePath: 'assets/image-1.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'القطط هي من الحيوانات اللاحمة',
      questionImagePath: 'assets/image-2.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'توجد الصين في القارة الإفريقية',
      questionImagePath: 'assets/image-3.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الأرض مسطحة وليست كروية',
      questionImagePath: 'assets/image-4.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'باستطاعة الإنسان البقاء على قيد الحياة بدون أكل اللحوم',
      questionImagePath: 'assets/image-5.jpg',
      questionAnswer: true,
    ),
    Question(
      questionText: 'الشمس تدور حول الأرض والأرض تدور حول القمر',
      questionImagePath: 'assets/image-6.jpg',
      questionAnswer: false,
    ),
    Question(
      questionText: 'الحيوانات لا تشعر بالألم',
      questionImagePath: 'assets/image-7.jpg',
      questionAnswer: false,
    )
  ];
}
