import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Ayt/edebiyatPage.dart';
import 'package:sinavproje/Ayt/fenBilimleriPage.dart';
import 'package:sinavproje/Ayt/mathPage.dart';
import 'package:sinavproje/Ayt/sosyalBilimlerPage.dart';
import 'package:sinavproje/Ayt/yabanciDilPage.dart';

class aytScreen extends StatefulWidget {
  const aytScreen({Key? key}) : super(key: key);

  @override
  State<aytScreen> createState() => _aytScreenState();
}

class _aytScreenState extends State<aytScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('TYT'),
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
                title:Text("Matematik"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mathPage()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Türk Dili ve Edebiyatı"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => edebiyatPage()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Sosyal Bilimler"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sosyalBilimlerPage()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Fen Bilimleri"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fenBilimleriPage()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Yabancı Dil"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => yabanciDilPage()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}
