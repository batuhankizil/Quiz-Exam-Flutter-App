import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'biyocesitlilik.dart';
import 'biyomlar.dart';
import 'ekosisteminUnsulari.dart';
import 'kureselIklim.dart';

class cografyaPage extends StatefulWidget {
  const cografyaPage({Key? key}) : super(key: key);

  @override
  State<cografyaPage> createState() => _cografyaPageState();
}

class _cografyaPageState extends State<cografyaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Coğrafya'),
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
                title:Text("Biyoçeşitlilik"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => biyocesitlilik()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Küresel İklim Değişimi"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => kureselIklim()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Biyomlar"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => biyomlar()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Ekosistemin Unsurları"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ekosisteminUnsulari()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}