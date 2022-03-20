import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sinavproje/HomePage.dart';

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
    const Duration(seconds: 3),

        ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder:(BuildContext context) => HomePage() )));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: ExactAssetImage('@mipmap/app_icon.png'),
          fit: BoxFit.fitHeight
        ),
        gradient: LinearGradient(
          colors: [Colors.green.shade500, Colors.green.shade900],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(child: Text('Edulive', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, decoration: TextDecoration.none))),
    );
  }
}
