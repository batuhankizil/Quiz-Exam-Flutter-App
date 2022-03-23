import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/HomePage.dart';
import 'package:sinavproje/Login.dart';
import 'package:sinavproje/Register.dart';

class Splash  extends StatefulWidget {
  const Splash ({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash > {
  @override
  void initState(){
    super.initState();
    Timer(
    const Duration(seconds: 1),

        ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder:(BuildContext context) => LoginScreen() )));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.green.shade800],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/app_icon.png',
              height: 180),
              const Text('Edulive',
              style: TextStyle(color: Colors.white,
              fontSize: 45),)
            ],
          ),
        ),
      ),
    );
  }
}
