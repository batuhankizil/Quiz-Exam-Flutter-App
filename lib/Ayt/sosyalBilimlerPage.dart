import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Ayt/ilkTurkDevletleri.dart';
import 'package:sinavproje/Ayt/islamTarihi.dart';
import 'package:sinavproje/Ayt/tarihBilimineGiris.dart';
import 'package:sinavproje/Ayt/turkIslamDevletleri.dart';
import 'package:sinavproje/Ayt/uygarliginDogusu.dart';

class sosyalBilimlerPage extends StatefulWidget {
  const sosyalBilimlerPage({Key? key}) : super(key: key);

  @override
  State<sosyalBilimlerPage> createState() => _sosyalBilimlerPageState();
}

class _sosyalBilimlerPageState extends State<sosyalBilimlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Sosyal Bilimler'),
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
                title:Text("Tarih Bilimine Giriş"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => tarihBilimineGiris()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Uygarlığın Doğuşu ve İlk Uygarlıklar"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => uygarliginDogusu()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("İlk Türk Devletleri"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ilkTurkDevletleri()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("İslam Tarihi ve Uygarlığı"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => islamTarihi()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Türk-İslam Devletleri"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => turkIslamDevletleri()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}