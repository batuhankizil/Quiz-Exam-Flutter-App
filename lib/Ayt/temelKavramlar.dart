import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class temelKavramlar extends StatefulWidget {
  const temelKavramlar({Key? key}) : super(key: key);

  @override
  State<temelKavramlar> createState() => _temelKavramlarState();
}

class _temelKavramlarState extends State<temelKavramlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temel Kavramlar'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Container(child: Text('Rakam, Sayı', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Sayıları yazmak için kullanılan sembollere rakam denir. Bir çokluğu belirtmen için bir veya birden fazla rakamla yazılan ifadeye sayı denir. \n\n Kullandığımız 10’luk sayı sisteminde rakamlar 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 olmak üzere 10 adettir. \n\n 1923, 100, 5 ve 81 birer sayıdır.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Doğal Sayılar', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('N = { 0, 1, 2, 3, 4, … } kümesine doğal sayılar kümesi denir ve ” N “ harfi ile isimlendirilir.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Sayma Sayıları', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Sadece nesneleri saymaya yarayan sayılardır. 1, 2, 3, 4, … diye ilerlerler ve bitmezler. Bir sonu yoktur sonsuzlardır.'),margin: EdgeInsets.all(10),),
            Container(child: Text('Tam Sayılar', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Z = { …, −3, −2, −1, 0, 1, 2, 3, … } kümesine tam sayılar kümesi denir ve ” Z “ harfi ile isimlendirilir.\n\n 0’dan küçük tam sayılara negatif tam sayılar denir ve ” Z− “ ile gösterilir. Z− = { −1, −2, −3, … }\n\n 0’dan büyük tam sayılara pozitif tam sayılar denir ve ” Z+ “ ile gösterilir. Z+ = { 1, 2, 3, …} \n\n Z = Z− ∪ {0} ∪ Z+', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
          ],
        ),

      ),
    );
  }
}
