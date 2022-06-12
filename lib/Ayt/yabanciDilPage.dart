import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cumleyiTamamlama.dart';
import 'dilBilgisiIng.dart';
import 'kelimeBilgisi.dart';

class yabanciDilPage extends StatefulWidget {
  const yabanciDilPage({Key? key}) : super(key: key);

  @override
  State<yabanciDilPage> createState() => _yabanciDilPageState();
}

class _yabanciDilPageState extends State<yabanciDilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Yabancı Dil'),
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
      body: ListView(
        children: [
          Card(
              child: ListTile(
                title:Text("Kelime Bilgisi"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kelimeBilgisi()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Dil Bilgisi"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dilBilgisiIng()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Cümleyi Tamamlama"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cumleyiTamamlama()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}