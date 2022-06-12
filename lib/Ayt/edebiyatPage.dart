import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Ayt/anlamBilgisi.dart';
import 'package:sinavproje/Ayt/bolmeBolunebilme.dart';
import 'package:sinavproje/Ayt/dilBilgisi.dart';
import 'package:sinavproje/Ayt/guzelSanatlar.dart';
import 'package:sinavproje/Ayt/metinlerinSiniflandirilmasi.dart';
import 'package:sinavproje/Ayt/mutlakDeger.dart';
import 'package:sinavproje/Ayt/rasyonelSayilar.dart';
import 'package:sinavproje/Ayt/sayiBasamaklari.dart';
import 'package:sinavproje/Ayt/siirBilgisi.dart';
import 'package:sinavproje/Ayt/temelKavramlar.dart';

class edebiyatPage extends StatefulWidget {
  const edebiyatPage({Key? key}) : super(key: key);

  @override
  State<edebiyatPage> createState() => _edebiyatPageState();
}

class _edebiyatPageState extends State<edebiyatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
      title: const Text('Edebiyat'),
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
                title:Text("Anlam Bilgisi"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => anlamBilgisi()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Dil Bilgisi"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dilBilgisi()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Güzel Sanatlar ve Edebiyat"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => guzelSanatlar()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Metinlerin Sınıflandırılması"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => metinlerinSiniflandirilmasi()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Şiir Bilgisi"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => siirBilgisi()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}