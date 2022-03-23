import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Edulive'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.green.shade800],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  print('Tıklandı');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("AYT",
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
              GestureDetector(
                onTap: (){
                  print('Tıklandı');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("TYT",
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
              GestureDetector(
                onTap: (){
                  print('TYT');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Çalışma Programı",
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
              GestureDetector(
                onTap: (){
                  print('Quiz');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Quiz",
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
              GestureDetector(
                onTap: (){
                  print('İstatistikler');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("İstatistikler",
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
              GestureDetector(
                onTap: (){
                  print('Deneme');
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  /*child: const Text("He'd have you all unravel at the",
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,),*/
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Denemeler",
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
            ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Ders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
