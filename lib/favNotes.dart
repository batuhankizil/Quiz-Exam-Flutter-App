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
              height: 60,
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
                              Text('Sayısal'),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Pazartesi'),
                                        Text('Salı'),
                                        Text('Çarşamba'),
                                        Text('Perşembe'),
                                      ]),
                                      TableRow(children :[
                                        Text('2011',),
                                        Text('Dart'),
                                        Text('Lars Bak'),
                                        Text('Lars Bak'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                    ]
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Cuma'),
                                        Text('Cumartesi'),
                                        Text('Pazar'),
                                      ]),
                                      TableRow(children :[
                                        Text('2011',),
                                        Text('Dart'),
                                        Text('Lars Bak'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                      ]),
                                    ]
                                ),
                              ),
                              Text('Sözel'),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Pazartesi'),
                                        Text('Salı'),
                                        Text('Çarşamba'),
                                        Text('Perşembe'),
                                      ]),
                                      TableRow(children :[
                                        Text('2011',),
                                        Text('Dart'),
                                        Text('Lars Bak'),
                                        Text('Lars Bak'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                    ]
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Cuma'),
                                        Text('Cumartesi'),
                                        Text('Pazar'),
                                      ]),
                                      TableRow(children :[
                                        Text('2011',),
                                        Text('Dart'),
                                        Text('Lars Bak'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                      ]),
                                    ]
                                ),
                              ),
                              Text('Eşit Ağırlık'),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Pazartesi'),
                                        Text('Salı'),
                                        Text('Çarşamba'),
                                        Text('Perşembe'),
                                      ]),
                                      TableRow(children :[
                                        Text('2011',),
                                        Text('Dart'),
                                        Text('Lars Bak'),
                                        Text('Lars Bak'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                        Text('James Gosling'),
                                      ]),
                                    ]
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Cuma'),
                                        Text('Cumartesi'),
                                        Text('Pazar'),
                                      ]),
                                      TableRow(children :[
                                        Text('2011',),
                                        Text('Dart'),
                                        Text('Lars Bak'),
                                      ]),
                                      TableRow(children :[
                                        Text('1996'),
                                        Text('Java'),
                                        Text('James Gosling'),
                                      ]),
                                    ]
                                ),
                              ),
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
