import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class biyomlar extends StatefulWidget {
  const biyomlar({Key? key}) : super(key: key);

  @override
  State<biyomlar> createState() => _biyomlarState();
}

class _biyomlarState extends State<biyomlar> {
  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biyomlar'),
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
      body: StreamBuilder<QuerySnapshot>(
        stream: db.collection('biyomlar').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: snapshot.data!.docs.map((doc) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(doc['title1'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context1']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title2'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context2']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title3'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context3']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title4'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context4']),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}