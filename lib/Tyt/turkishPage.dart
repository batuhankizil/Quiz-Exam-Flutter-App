import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class turkishPage extends StatefulWidget {
  const turkishPage({Key? key}) : super(key: key);

  @override
  State<turkishPage> createState() => _turkishPageState();
}

class _turkishPageState extends State<turkishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: const [
          Card(
              child: ListTile(
                title:Text("Sözcük Anlamı"),
              )
          ),
          Card(
            child: ListTile(
              title: Text("Deyim ve Atasözü"),
            ),
          ),
          Card(
              child: ListTile(
                title: Text("Cümle Anlamı"),
              )
          ),
          Card(
              child: ListTile(
                title: Text("Cümle Yorumu"),
              )
          ),
          Card(
              child: ListTile(
                title: Text("Ses Bilgisi"),
              )
          ),
          Card(
              child: ListTile(
                title: Text("Noktalama İşaretleri"),
              )
          ),
        ],
        padding: EdgeInsets.all(30),
      ),
    );
  }
}