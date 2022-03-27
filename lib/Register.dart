import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Login.dart';
import 'package:sinavproje/Service/auth.dart';

import 'HomePage.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  String name = "";

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*body: Container(
        padding: EdgeInsets.all(40),
        child: Form(
          key: formKey,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Register', style: const TextStyle(fontSize: 30),),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                ),
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
              TextFormField(
                controller: _passwordAgainController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password Again",
                ),
              ),
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      /*_authService.createPerson(_nameController.text, _emailController.text, _passwordController.text).then((value){
                        return Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      });*/
                      FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value) =>
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())));

                    },
                    child: const Text('Register'),
                  )
                ],
              )
            ],
          )
        ),
      ),*/
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
            /// Login & Welcome back
            Container(
              height: 210,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text('Hesap Oluştur', style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(height: 7.5),
                  Text('Bilgilerinizi girerek kayıt olabilirsiniz', style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
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
                        const SizedBox(height: 60),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    blurRadius: 20,
                                    spreadRadius: 10,
                                    offset: const Offset(0, 10)
                                ),
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextField(
                                style: const TextStyle(fontSize: 15),
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Ad Soyad',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                                controller: _nameController,
                              ),
                              const Divider(color: Colors.black54, height: 1),
                              TextField(
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                                controller: _emailController,
                              ),
                              const Divider(color: Colors.black54, height: 1),
                               TextField(
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Şifre',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                                controller: _passwordController,
                                obscureText: true,
                              ),
                              const Divider(color: Colors.black54, height: 1),
                               TextField(
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Şifre Tekrar',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                                controller: _passwordAgainController,
                                obscureText: true,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 35),
                        MaterialButton(
                            onPressed: (){
                              FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value) =>
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())));
                            },
                            child: Container(
                              //margin: const EdgeInsets.symmetric(horizontal: 25),
                              margin: const EdgeInsets.symmetric(horizontal: 25),
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text("KAYDOL",
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
                            )
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('Telefon Numarası ile', style: TextStyle(color: Colors.black45)),
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()),);
                                  },
                                  child: const Text('Kayıt Ol', style: TextStyle(color: Colors.green),))
                            ],
                          ),
                        )
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
