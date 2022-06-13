import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sinavproje/Service/auth.dart';
import 'package:sinavproje/Login.dart';
import 'package:sinavproje/appAboutScreen.dart';
import 'package:sinavproje/favNotes2.dart';

import 'countdown.dart';

class MainDrawer extends StatelessWidget {

  final Future<FirebaseApp> _initfirebase = Firebase.initializeApp();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*const CircleAvatar(
                radius: 50.0,
                backgroundImage:
                NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png"),
                backgroundColor: Colors.white,
              ),*/
              CircleAvatar(radius: (60),
                  backgroundColor: Colors.green,
                  child: ClipRRect(
                    child: Image.asset("assets/app_icon.png",fit:BoxFit.fill, height: 60,),
                  )
              ),
              const SizedBox(
                height: 5.0,
              ),
              /*FutureBuilder(
                future: _initfirebase,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text("${_firestore.hashCode}");
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),*/

              /*const Text(
                "Batuhan Kızıl",
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),*/
              const SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: _initfirebase,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text("${_auth.currentUser?.displayName}",style: TextStyle(fontSize: 18));
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(
                height: 5.0,
              ),
              FutureBuilder(
                future: _initfirebase,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text("${_auth.currentUser?.email}",style: TextStyle(fontSize: 18));
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      const Divider(
        thickness: 1,
        //color: Colors.green,
      ),
      const SizedBox(
        height: 20.0,
      ),
      /*ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => countdown()));
        },
        leading: const Icon(
          Icons.timelapse,
          color: Colors.black,
        ),
        title: Text("Sınava Kalan Süre"),
      ),*/
      /*ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text("Ayarlar"),
      ),*/
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => appAboutScreen()));
        },
        leading: const Icon(
          Icons.info_outline,
          color: Colors.black,
        ),
        title: Text("Edulive Hakkında"),
      ),
      const SizedBox(
        height: 20.0,
      ),
      const Divider(
        thickness: 1,
        //color: Colors.green,
      ),
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => favNotesScreen2()));
        },
        leading: const Icon(
          Icons.info_outline,
          color: Colors.black,
        ),
        title: Text("Kamera"),
      ),

      ListTile(
        onTap: () {
          /*await FirebaseAuth.instance.signOut();
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },*/

          /*await FirebaseAuth.instance.signOut();
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
                  (route) => false);*/

          _showDialog(context);

        },

        leading: const Icon(
          Icons.logout,
          color: Colors.black,
        ),
        title: Text("Çıkış"),
      ),
    ]);
  }

  void _showDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Çıkış yapmak istiyor musun ?"),
          //content: Text("Çıkış yapılıyor"),
          actions: <Widget>[
            TextButton(
              child: Text("Hayır"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Evet"),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                        (route) => false);
              },
            ),
          ],
        );
      },
    );
  }

}
