import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';


class countdown extends StatefulWidget {
  const countdown({Key? key}) : super(key: key);

  @override
  State<countdown> createState() => _countdownState();
}

class _countdownState extends State<countdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Sayaç'),
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
      body: CupertinoPageScaffold(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child: SafeArea(
              minimum: EdgeInsets.all(55),
              child: Center(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      "Tyt Sınavına Kalan Süre",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TimerCountdown(
                      format: CountDownTimerFormat.daysHoursMinutesSeconds,
                      endTime: DateTime.now().add(
                        Duration(
                          days: 7,
                          hours: 8,
                          minutes: 29,
                          seconds: 25,
                        ),
                      ),
                      /*onEnd: () {
                        print("Timer finished");
                      },*/
                      timeTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      colonsTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      descriptionTextStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                      ),
                    ),


                    SizedBox(
                      height: 50,
                    ),


                    Text(
                      "Ayt Sınavına Kalan Süre",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TimerCountdown(
                      format: CountDownTimerFormat.daysHoursMinutesSeconds,
                      endTime: DateTime.now().add(
                        Duration(
                          days: 14,
                          hours: 5,
                          minutes: 34,
                          seconds: 25,
                        ),
                      ),
                      /*onEnd: () {
                        print("Timer finished");
                      },*/
                      timeTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      colonsTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      descriptionTextStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}