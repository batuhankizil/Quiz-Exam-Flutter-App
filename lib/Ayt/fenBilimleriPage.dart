import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fizikBilimineGiris.dart';
import 'isGucEnerji.dart';
import 'isiSicaklikGenlesme.dart';
import 'kuvvetveHareket.dart';
import 'maddeveOzellikleri.dart';

class fenBilimleriPage extends StatefulWidget {
  const fenBilimleriPage({Key? key}) : super(key: key);

  @override
  State<fenBilimleriPage> createState() => _fenBilimleriPageState();
}

class _fenBilimleriPageState extends State<fenBilimleriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Fen Bilimleri'),
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
                title:Text("Fizik Bilimine Giriş"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fizikBilimineGiris()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Madde ve Özellikleri"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => maddeveOzellikleri()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Isı - Sıcaklık - Genleşme"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => isiSicaklikGenlesme()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Kuvvet ve Hareket"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kuvvetveHareket()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("İş - Güç - Enerji"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => isGucEnerji()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}