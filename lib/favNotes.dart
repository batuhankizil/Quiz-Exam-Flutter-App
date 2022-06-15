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
                              Text('Sayısal',style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Pazartesi',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Salı',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Çarşamba',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Perşembe',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                      ]),
                                      TableRow(children :[
                                        Text('Matematik',),
                                        Text('Fizik'),
                                        Text('Biyoloji'),
                                        Text('Mat Tekrar'),
                                      ]),
                                      TableRow(children :[
                                        Text('Matematik'),
                                        Text('Fizik'),
                                        Text('Kimya'),
                                        Text('Geometri Tekrar'),
                                      ]),
                                      TableRow(children :[
                                        Text('Kimya'),
                                        Text('Kimya'),
                                        Text('Türkçe'),
                                        Text('Kimya Tekrar'),
                                      ]),
                                      TableRow(children :[
                                        Text('Kimya'),
                                        Text('Matematik'),
                                        Text('Matematik'),
                                        Text('Türkçe'),
                                      ]),
                                      TableRow(children :[
                                        Text('Fizik'),
                                        Text('Geometri'),
                                        Text('Geometri'),
                                        Text('Sosyal Bilgiler'),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe'),
                                        Text('Geometri'),
                                        Text('Geometri'),
                                        Text('Fen Bilimleri'),
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
                                        Text('Cuma',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Cumartesi',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Pazar',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                      ]),
                                      TableRow(children :[
                                        Text('Matematik',),
                                        Text('Geometri'),
                                        Text('Tatil'),
                                      ]),
                                      TableRow(children :[
                                        Text('Geometri'),
                                        Text('Matematik'),
                                        Text('Tatil'),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe'),
                                        Text('Türkçe'),
                                        Text('Tatil'),
                                      ]),
                                      TableRow(children :[
                                        Text('Fen Bilimleri'),
                                        Text('Sosyal Bilimler'),
                                        Text('Tatil'),
                                      ]),
                                    ]
                                ),
                              ),
                              Text('Sözel',style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Pazartesi',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Salı',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Çarşamba',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Perşembe',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe',),
                                        Text('Edebiyat'),
                                        Text('Tarih'),
                                        Text('Türkçe'),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe'),
                                        Text('Edebiyat'),
                                        Text('Fen Bilimleri'),
                                        Text('Edebiyat'),
                                      ]),
                                      TableRow(children :[
                                        Text('Edebiyat'),
                                        Text('Fen Bilimleri'),
                                        Text('Tarih'),
                                        Text('Edebiyat'),
                                      ]),
                                      TableRow(children :[
                                        Text('Edebiyat'),
                                        Text('Matematik'),
                                        Text('Edebiyat'),
                                        Text('Türkçe'),
                                      ]),
                                      TableRow(children :[
                                        Text('Biyoloji'),
                                        Text('Türkçe'),
                                        Text('Sosyal Bilgiler'),
                                        Text('Matematik'),
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
                                        Text('Cuma',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Cumartesi',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Pazar',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                      ]),
                                      TableRow(children :[
                                        Text('Geometri',),
                                        Text('Matematik'),
                                        Text('Tatil'),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe'),
                                        Text('Edebiyat'),
                                        Text('Tatil'),
                                      ]),
                                    ]
                                ),
                              ),
                              Text('Eşit Ağırlık',style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Table(
                                    border: TableBorder.all(), // Allows to add a border decoration around your table
                                    children: [
                                      TableRow(children :[
                                        Text('Pazartesi',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Salı',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Çarşamba',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Perşembe',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                      ]),
                                      TableRow(children :[
                                        Text('Matematik',),
                                        Text('Edebiyat'),
                                        Text('Türkçe'),
                                        Text('Edebiyat'),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe'),
                                        Text('Fen Bilimleri'),
                                        Text('Sosyal Bilgiler'),
                                        Text('Geometri'),
                                      ]),
                                      TableRow(children :[
                                        Text('Türkçe'),
                                        Text('Matematik'),
                                        Text('Tarih'),
                                        Text('Matematik'),
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
                                        Text('Cuma',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Cumartesi',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                        Text('Pazar',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold)),
                                      ]),
                                      TableRow(children :[
                                        Text('Matematik',),
                                        Text('Fen Bilimleri'),
                                        Text('Türkçe'),
                                      ]),
                                      TableRow(children :[
                                        Text('Edebiyat'),
                                        Text('İngilizce'),
                                        Text('Matematik'),
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
