import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'HomePage.dart';

class favNotesScreen extends StatefulWidget {
  const favNotesScreen({Key? key}) : super(key: key);

  @override
  State<favNotesScreen> createState() => _favNotesScreenState();
}

class _favNotesScreenState extends State<favNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Çalışma Programı'),
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

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.green.shade800],
            begin: Alignment.centerRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text('Pazartesi',style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                              Text('Test',style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),

                            ],
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
