import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';
import 'Question.dart';

AllQuestions allQuestions = AllQuestions();

List<int> numberOfQuestionList = List<int>.generate(
  allQuestions.allQuestionsList.length,
  (index) => index,
);

int questionNumber = 0;
int numberOfQuestionListIndex = 0;
Icon myIcon = Icon(Icons.thumb_up);
Color myIconColor = Colors.green;
int numberOfRightAnswer = 0;
int numberOfWrongAnswer = 0;

void shuffleTheListOfQuestions() {
  numberOfQuestionList.shuffle();
  questionNumber = numberOfQuestionList[0];
  //print(numberOfQuestionList);
}

void getQuestion() {
  if (numberOfQuestionListIndex < numberOfQuestionList.length - 1) {
    numberOfQuestionListIndex++;
    questionNumber = numberOfQuestionList[numberOfQuestionListIndex];
  } else {}
}

void main() {
  shuffleTheListOfQuestions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("ar", "AE"),
      supportedLocales: const [Locale("ar"), Locale("en")],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      debugShowCheckedModeBanner: false,
      title: 'questions_app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //List<Padding> answerResult = [];
  bool showThumbs = false;

  void verifyAnswer(bool userPickedAnswer) {
    bool correctAnswer =
        allQuestions.allQuestionsList[questionNumber].questionAnswer;
    if (userPickedAnswer == correctAnswer) {
      numberOfRightAnswer++;
      myIcon = Icon(Icons.thumb_up);
      myIconColor = Colors.green;
    } else {
      numberOfWrongAnswer++;
      myIcon = Icon(Icons.thumb_down);
      myIconColor = Colors.red;
    }
    showTemporaryThumbs();
  }

  void showTemporaryThumbs() {
    setState(() {
      showThumbs = true;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        showThumbs = false;
      });
      setState(() {
        getQuestion();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        title: Text("لعبة الأسئلة", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Image and Question Text
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  //Question Image
                  Image.asset(
                    allQuestions
                        .allQuestionsList[questionNumber]
                        .questionImagePath,
                  ),
                  SizedBox(height: 5),
                  //Question Text
                  Card(
                    color: Colors.blue[500],
                    child: Text(
                      allQuestions
                          .allQuestionsList[questionNumber]
                          .questionText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),

                  // Thumbs Up and Down
                  SizedBox(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (showThumbs)
                          Center(
                            child: Icon(
                              myIcon.icon,
                              color: myIconColor,
                              size: 100,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // True Button
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[500],
                ),
                onPressed: () {
                  verifyAnswer(true);
                  //showTemporaryThumbs();
                },
                child: Text(
                  "صح",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // False Button
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[500],
                ),
                onPressed: () {
                  verifyAnswer(false);
                  //showTemporaryThumbs();
                },
                child: Text(
                  "خطأ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            //right and wrong answers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.check, color: Colors.white, size: 25),
                      Text(
                        ' : $numberOfRightAnswer',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.close, color: Colors.white, size: 25),
                      Text(
                        ' : $numberOfWrongAnswer',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
