import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Tyt/kimyaPage.dart';
import 'package:sinavproje/Tyt/turkishPage.dart';

import 'cografyaPage.dart';
import 'matematikPage.dart';

class tytScreen extends StatefulWidget {
  const tytScreen({Key? key}) : super(key: key);

  @override
  State<tytScreen> createState() => _tytScreenState();
}

class _tytScreenState extends State<tytScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('AYT'),
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
                    MaterialPageRoute(builder: (context) => matematikPage()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Türkçe"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => turkishPage()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Coğrafya"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cografyaPage()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Kimya"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kimyaPage()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}
