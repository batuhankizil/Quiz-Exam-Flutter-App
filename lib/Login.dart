import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
      /*body: Container(
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
}*/

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
                  Text('Merhaba', style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(height: 7.5),
                  Text('Giriş yaparak devam et', style: TextStyle(color: Colors.white, fontSize: 15)),
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
                          height: 120,
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
                              /// EMAIL
                              TextField(
                                style: TextStyle(fontSize: 15),
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Email / Telefon Numarası',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                                controller: _emailController,
                              ),
                              Divider(color: Colors.black54, height: 1),
                              /// PASSWORD
                              TextField(
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    hintText: 'Şifre',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                                obscureText: true,
                                controller: _passwordController,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 35),
                        MaterialButton(
                          onPressed: (){
                            _authService.signIn(_emailController.text, _passwordController.text).then((value) {
                              return Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                            });
                          },
                          child: Container(
                            //margin: const EdgeInsets.symmetric(horizontal: 25),
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text("GİRİŞ YAP",
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
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()),);
                                  },
                                  child: const Text('Şifremi Unuttum?', style: TextStyle(color: Colors.black45)))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Yeni Kullanıcı?'),
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
