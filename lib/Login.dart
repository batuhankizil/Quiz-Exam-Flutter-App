import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sinavproje/HomePage.dart';
import 'package:sinavproje/Register.dart';
import 'package:sinavproje/Service/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String name = "";

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              const Text('Login', style: TextStyle(fontSize: 30),),
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
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      _authService.signIn(_emailController.text, _passwordController.text).then((value) {
                        return Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      });
                    },
                    child: const Text('Login'),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      print("Tıkla");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()),);
                    },
                    child: const Text('Register'),
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
