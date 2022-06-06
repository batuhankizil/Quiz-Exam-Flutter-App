import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/test_veri.dart';

import 'constants.dart';

class BilgiTesti extends StatelessWidget {
  const BilgiTesti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: trueFalse(),
          ),
        ),
      ),
    );
  }
}

class trueFalse extends StatefulWidget {
  const trueFalse({Key? key}) : super(key: key);

  @override
  State<trueFalse> createState() => _trueFalseState();
}

class _trueFalseState extends State<trueFalse> {

  int yanit = 0;
  List<Widget> secimler = [];
  TestVeri test_1 = TestVeri();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doğru Yanlış'),
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
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  test_1.soruBankasi[yanit].soruMetni,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 5,
            runSpacing: 5,
            children: secimler,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: RaisedButton(
                        padding: const EdgeInsets.all(12),
                        textColor: Colors.white,
                        color: Colors.red[400],
                        child: const Icon(
                          Icons.thumb_down,
                          size: 30.0,
                        ),
                        onPressed: () {
                          setState(
                                () {
                              if (test_1.soruBankasi[yanit].soruYaniti == false &&
                                  yanit <= 6) {
                                secimler.add(dogruIconu);
                                yanit++;
                              } else if (yanit <= 6) {
                                secimler.add(yanlisIconu);
                                yanit++;
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: RaisedButton(
                        padding: const EdgeInsets.all(12),
                        textColor: Colors.white,
                        color: Colors.green[400],
                        child: const Icon(Icons.thumb_up, size: 30.0),
                        onPressed: () {
                          setState(() {
                            if (test_1.soruBankasi[yanit].soruYaniti == true &&
                                yanit <= 6) {
                              secimler.add(dogruIconu);
                              yanit++;
                            } else if (yanit <= 6) {
                              secimler.add(yanlisIconu);
                              yanit++;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
