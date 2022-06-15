import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sinavproje/constants.dart';
import 'package:sinavproje/screens/quiz/quiz_screen.dart';
import 'package:sinavproje/screens/quiz/quiz_screen_matematik.dart';
import 'package:sinavproje/screens/quiz/quiz_screen_sosyal.dart';

import '../../HomePage.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.green.shade800],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),

      backgroundColor: Colors.lightGreenAccent.shade100,
      body: Stack(
        children: [
          //SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill,),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*Spacer(flex: 2), //2/6
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 140,
                      child: Text(
                        "Quiz App",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 100, wordSpacing: 2)

                      ),
                    )
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 50,
                      child: Text("Let's Play Quiz,",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 40)
                      ),
                    ),
                  ),

                  GestureDetector(
                    child: Container(
                      alignment: Alignment.topCenter,
                      height: 300,
                      child: Text("Enter your informations below",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.black, fontSize: 20)
                      ),
                    ),
                  ),

                  Spacer(),*/ // 1/6
                  /*GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF1C2341),
                          hintText: "Full Name",
                          hintStyle: TextStyle(fontSize: 23),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    )
                  ),*/
                  Spacer(), // 1/6
                  GestureDetector(
                    onTap: () {
                      print('Tıklandı');
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreen()),);

                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Türkçe",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.green.shade800],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tıklandı');
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreenMatematik()),);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Matematik",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.green.shade800],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tıklandı');
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreenSosyal()),);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Sosyal Bilgiler",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.green.shade800],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Tıklandı');
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreen()),);

                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Fen Bilimleri",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.green.shade800],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),



                  /*TextButton(onPressed: (){

                  }, child: Text('Test')),*/
                  /*InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 1.5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green.shade600, Colors.green.shade800],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),

                      child: Text(
                        "Quizi Başlat",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),*/
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
