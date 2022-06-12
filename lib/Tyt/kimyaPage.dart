import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Tyt/kimyaBilimi.dart';
import 'package:sinavproje/Tyt/kimyasalHesaplamalar.dart';

import 'karisimlar.dart';
import 'maddeninHalleri.dart';

class kimyaPage extends StatefulWidget {
  const kimyaPage({Key? key}) : super(key: key);

  @override
  State<kimyaPage> createState() => _kimyaPageState();
}

class _kimyaPageState extends State<kimyaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        title: const Text('Kimya'),
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
                title:Text("Kimya Bilimi"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kimyaBilimi()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Maddenin Halleri"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => maddeninHalleri()),);
              },
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Kimyasal Hesaplamalar"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kimyasalHesaplamalar()),);
                },
              )
          ),
          Card(
              child: ListTile(
                title: Text("Karışımlar"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => karisimlar()),);
                },
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}