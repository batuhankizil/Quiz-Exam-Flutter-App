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
          title: Text('Hızlı Bilgi'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red.shade300, Colors.red.shade600],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                width: 200,
                color: Colors.red.shade400,
                child: const Center(child: Text('Matematik', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 200,
                color: Colors.red.shade400,
                child: const Center(child: Text('Türkçe', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 200,
                color: Colors.red.shade400,
                child: const Center(child: Text('Fizik', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 200,
                color: Colors.red.shade400,
                child: const Center(child: Text('Ingilizce', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}