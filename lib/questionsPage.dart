import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class questionsPage extends StatefulWidget {
  const questionsPage({Key? key}) : super(key: key);

  @override
  State<questionsPage> createState() => _questionsPageState();
}

class _questionsPageState extends State<questionsPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/



void main() => runApp(const questionsPage());

class questionsPage extends StatelessWidget {
  const questionsPage({Key? key}) : super(key: key);

  //static const String _title = 'Soru Dağılımı';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: const Text('Soru Dağılımı'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.green.shade800],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          centerTitle: true,
        ),*/
        appBar: AppBar(
          centerTitle: false,
          title: const Text("Soru Dağılımı"),
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
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Dersler',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            '2021',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            '2020',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        /*DataColumn(
          label: Text(
            '2018',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),*/
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Temel Kavramlar')),
            DataCell(Text('3')),
            DataCell(Text('1')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sayı Basamakları')),
            DataCell(Text('2')),
            DataCell(Text('1')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Bölünebilme Kuralları')),
            DataCell(Text('1')),
            DataCell(Text('1')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('OBEB-OKEK')),
            DataCell(Text('-')),
            DataCell(Text('-')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Rasyonel Sayılar')),
            DataCell(Text('-')),
            DataCell(Text('3')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Basit Eşitsizlikler')),
            DataCell(Text('1')),
            DataCell(Text('1')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Mutlak Değer	')),
            DataCell(Text('1')),
            DataCell(Text('1')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Üslü Sayılar')),
            DataCell(Text('1')),
            DataCell(Text('1')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Ses Bilgisi')),
            DataCell(Text('1')),
            DataCell(Text('-')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Dil Bilgisi	')),
            DataCell(Text('2')),
            DataCell(Text('3')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Noktalama İşaretleri	')),
            DataCell(Text('2')),
            DataCell(Text('2')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Yazım Kuralları	')),
            DataCell(Text('2')),
            DataCell(Text('2')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Anlatım Bozukluğu	')),
            DataCell(Text('-')),
            DataCell(Text('-')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Paragraf	')),
            DataCell(Text('25')),
            DataCell(Text('26')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Cümlede Anlamı	')),
            DataCell(Text('3')),
            DataCell(Text('6')),
          ],
        ),
      ],
    );
  }
}
