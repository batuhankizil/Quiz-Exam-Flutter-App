import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sinavproje/Service/auth.dart';
import 'package:sinavproje/Login.dart';
import 'package:sinavproje/appAboutScreen.dart';

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
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png",
                ),
                backgroundColor: Colors.white,
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

              const Text(
                "Batuhan Kızıl",
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              FutureBuilder(
                future: _initfirebase,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text("${_auth.currentUser?.email}");
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              /*const Text(
                "batu@gmail.com",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 16.0,
                ),
              ),*/

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
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.timelapse,
          color: Colors.black,
        ),
        title: Text("Zamanlayıcı"),
      ),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text("Ayarlar"),
      ),
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
      ListTile(
        onTap: () async {
          /*await FirebaseAuth.instance.signOut();
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },*/
          await FirebaseAuth.instance.signOut();
          Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
          builder: (context) => LoginScreen(),
          ),
          (route) => false);
        },

        leading: const Icon(
          Icons.logout,
          color: Colors.black,
        ),
        title: Text("Çıkış"),
      ),
    ]);
  }
}
