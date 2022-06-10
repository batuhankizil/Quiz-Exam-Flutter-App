import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scoreCalculator extends StatefulWidget {
  const scoreCalculator({Key? key}) : super(key: key);

  @override
  State<scoreCalculator> createState() => _scoreCalculatorState();


}

class _scoreCalculatorState extends State<scoreCalculator> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();

  num result2 = 0;


}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final controlTurkce = TextEditingController();
  final controlSosyalBilimler = TextEditingController();
  final controlTemelMatematik = TextEditingController();
  final controlFenBilimleri = TextEditingController();
  final controlObpPuan = TextEditingController();

  num netTurkce = 0,
      netSosyalBilimler = 0,
      netTemelMatematik = 0,
      netFenBilimleri = 0,
      obpPuan = 0;

  num result = 0;


  String firstName = "";
  String lastName = "";
  String bodyTemp = "";
  var measure;

  /*void _submit() {
    showDialog<void>(
      context: context,
      barrierDismissible: true, // user can tap anywhere to close the pop up
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Full name:",
                        style: TextStyle(fontWeight: FontWeight.w700))),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(firstName + " " + lastName),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Body Temperature:",
                        style: TextStyle(fontWeight: FontWeight.w700))),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("$bodyTemp ${measure == 1 ? "ºC" : "ºF"}"),
                )
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: const Text('Go to profile'),
                  onPressed: () async {
                    FocusScope.of(context)
                        .unfocus(); // unfocus last selected input field
                    Navigator.pop(context);
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyProfilePage())) // Open my profile
                        .then((_) => _formKey.currentState
                        ?.reset()); // Empty the form fields
                    setState(() {});
                  }, // so the alert dialog is closed when navigating back to main page
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                    FocusScope.of(context)
                        .unfocus(); // Unfocus the last selected input field
                    _formKey.currentState?.reset(); // Empty the form fields
                  },
                )
              ],
            )
          ],
        );
      },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Puan Hesapla"),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Netlerinizi giriniz",
                    style: TextStyle(
                      fontSize: 24,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Türkçe',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                      controller: controlTurkce,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Boş bırakılamaz.';
                        } /*else if (value.contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                          return 'Lütfen netinizi girin.';
                        }*/
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Sosyal Bilimler',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                      controller: controlSosyalBilimler,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Boş bırakılamaz.';
                        } /*else if (value.contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                          return 'Lütfen netinizi girin.';
                        }*/
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Temel Matematik',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                      controller: controlTemelMatematik,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Boş bırakılamaz.';
                        } /*else if (value.contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                          return 'Lütfen netinizi girin.';
                        }*/
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Fen Bilimleri',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),
                      controller: controlFenBilimleri,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Boş bırakılamaz.';
                        } /*else if (value.contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                          return 'Lütfen netinizi girin.';
                        }*/
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'OBP Puanı',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide:
                            BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          border: OutlineInputBorder()),
                      controller: controlObpPuan,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Boş bırakılamaz.';
                        } /*else if (value.contains(RegExp(r'^[0-9_\-=@,\.;]+$'))) {
                          return 'Lütfen netinizi girin.';
                        }*/
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    /*GestureDetector(
                      onTap: () {
                        netTurkce = num.parse(controlTurkce.text);
                        netSosyalBilimler = num.parse(controlSosyalBilimler
                            .text);
                        netTemelMatematik = num.parse(controlTemelMatematik
                            .text);
                        netFenBilimleri = num.parse(controlFenBilimleri.text);
                        obpPuan = num.parse(controlObpPuan.text);

                        result = netTurkce*1.32 + netSosyalBilimler*1.36 +
                            netTemelMatematik*1.32 + netFenBilimleri*1.36 + obpPuan + 100;
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Hesapla",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.green, Colors.green.shade800],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),*/

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                          minimumSize: const Size.fromHeight(60)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //_submit();
                          setState(() {
                            netTurkce = num.parse(controlTurkce.text);
                            netSosyalBilimler = num.parse(controlSosyalBilimler
                                .text);
                            netTemelMatematik = num.parse(controlTemelMatematik
                                .text);
                            netFenBilimleri = num.parse(controlFenBilimleri.text);
                            obpPuan = num.parse(controlObpPuan.text);

                            result = netTurkce*3.3 + netSosyalBilimler*3.4 +
                                netTemelMatematik*3.3 + netFenBilimleri*3.4 + obpPuan*0.6 + 100;
                          });
                          /*if(netTurkce > 40 || netTemelMatematik > 40 || netFenBilimleri > 40 || netSosyalBilimler > 40){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text("Netiniz 40'dan fazla olamaz"),
                            ));
                          }*/
                        }

                      },
                      child: const Text("Hesapla"),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('TYT Puanı',
                        style: TextStyle(fontSize: 22))
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("$result",
                        style: TextStyle(fontSize: 20))
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            const Text("New data",
                style: TextStyle(
                  fontSize: 24,
                )),
            const Spacer(),
            ElevatedButton(
              child: const Text('New'),
              onPressed: () => Navigator.pop(context),
            )
          ]),
        ]),
      ),
    );
  }
}

extension StringExtension on String {
  // Method used for capitalizing the input from the form
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}