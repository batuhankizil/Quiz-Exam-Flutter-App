import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Ayt/temelKavramlar.dart';

class mathPage extends StatefulWidget {
  const mathPage({Key? key}) : super(key: key);

  @override
  State<mathPage> createState() => _mathPageState();
}

class _mathPageState extends State<mathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
                title:Text("Temel Kavramlar"),
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => temelKavramlar()),);
                },
              )
          ),
          Card(
            child: ListTile(
              title: Text("Sayı Basamakları"),
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Bölme ve Bölünebilme"),
              )
          ),
          Card(
              child: ListTile(
                title: Text("Rasyonel Sayılar"),
              )
          ),
          Card(
              child: ListTile(
                title: Text("Mutlak Değer"),
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}