import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aytScreen extends StatefulWidget {
  const aytScreen({Key? key}) : super(key: key);

  @override
  State<aytScreen> createState() => _aytScreenState();
}

class _aytScreenState extends State<aytScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
            children: const [
              Card(
                  child: ListTile(
                    title:Text("Türk Dili ve Edebiyatı") ,
                  )
              ),
              Card(
                child: ListTile(
                  title: Text("Sosyal Bilimler"),
                ),
              ),
              Card(
                  child: ListTile(
                    title: Text("Matematik"),
                  )
              ),
              Card(
                  child: ListTile(
                    title: Text("Fen Bilimleri"),
                  )
              ),
            ],
            padding: EdgeInsets.all(30),
          ),
    );
  }
}
