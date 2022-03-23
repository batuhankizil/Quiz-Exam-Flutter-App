import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinavproje/Login.dart';
import 'package:sinavproje/Service/auth.dart';

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
      body: Container(
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
      ),
    );
  }
}
