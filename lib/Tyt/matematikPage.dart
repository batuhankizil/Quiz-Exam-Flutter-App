import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Tyt/limit.dart';
import 'package:sinavproje/Tyt/logaritma.dart';
import 'package:sinavproje/Tyt/trigonometri.dart';

import 'diziler.dart';

class matematikPage extends StatefulWidget {
  const matematikPage({Key? key}) : super(key: key);

  @override
  State<matematikPage> createState() => _matematikPageState();
}

class _matematikPageState extends State<matematikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Matematik'),
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
                title:Text("Trigonometri"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => trigonometri()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Logaritma"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => logaritma()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Diziler"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => diziler()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Limit"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => limit()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}