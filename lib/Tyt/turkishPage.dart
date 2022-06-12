import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Tyt/sozcukAnlami.dart';

import 'cumleAnlami.dart';
import 'cumleYorumu.dart';
import 'deyimveAtasozu.dart';

class turkishPage extends StatefulWidget {
  const turkishPage({Key? key}) : super(key: key);

  @override
  State<turkishPage> createState() => _turkishPageState();
}

class _turkishPageState extends State<turkishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Türkçe'),
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
                title:Text("Sözcük Anlamı"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sozcukAnlami()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Deyim ve Atasözü"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => deyimveAtasozu()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Cümle Anlamı"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cumleAnlami()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Cümle Yorumu"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cumleYorumu()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}