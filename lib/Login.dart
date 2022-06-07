import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sinavproje/HomePage.dart';
import 'package:sinavproje/Register.dart';
import 'package:sinavproje/Service/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sinavproje/Login.dart';
import 'package:sinavproje/my_drawer_header.dart';
import 'package:validators/validators.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}


class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String name = "";

  bool _validateMail = false;
  bool _validatePassword = false;

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    // ignore: todo
    _emailController = TextEditingController(); // TODO: implement initState
    // ignore: todo
    _passwordController = TextEditingController(); // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  saveData() async{
    final localStorage = await SharedPreferences.getInstance();
    localStorage.setString("userEmail", _emailController.text.toString());

    String? userEmail = localStorage.getString("userEmail");


    if(_emailController.text == "" && _passwordController.text == ""){
      print("Giriş yapılamadı.");
    }else{
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainDrawer())
      );
    }
  }

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
                          height: 146,
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
                                keyboardType: TextInputType.emailAddress,
                                textCapitalization: TextCapitalization.none,
                                style: TextStyle(fontSize: 15),
                                decoration:  InputDecoration(
                                    errorText: _validateMail ? 'Email Adresinizi Girin' : null,
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
                                decoration:  InputDecoration(
                                    errorText: _validatePassword ? 'Şifrenizi Girin' : null,
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
                          onPressed: () async {
                            setState(() {
                              _emailController.text.isEmpty ? _validateMail = true : _validateMail = false;
                              _passwordController.text.isEmpty ? _validatePassword = true : _validatePassword = false;
                            });
                            /*_authService.signIn(_emailController.text, _passwordController.text).then((value) {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                            });*/
                            _buildLoginButton();
                            _loginFunction();
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
  Widget _buildLoginButton() {
    return InkWell(onTap: () => _loginFunction(), child: _buildLoginButtonContainer());
  }

  Widget _buildLoginButtonContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2), borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(child: _buildLoginButtonText()),
      ),
    );
  }

  Widget _buildLoginButtonText() {
    return Text(
      "Giriş yap",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }

  void _loginFunction() {
    _authService.signIn(_emailController.text, _passwordController.text).then((value) {
      return Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }).catchError((dynamic error) {
      if (error.code.contains('invalid-email')) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Lütfen mail formatı giriniz"),
        ));
      }
      if (error.code.contains('user-not-found')) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Böyle bir kullanıcı yok"),
        ));
      }
      if (error.code.contains('wrong-password')) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Şifreniz yanlış"),
        ));
      }

      //  _buildErrorMessage(error.message);

      print(error.message);
    });
  }

  void _buildErrorMessage(String text) {
    Fluttertoast.showToast(
        msg: text,
        timeInSecForIosWeb: 2,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey[600],
        textColor: Colors.white,
        fontSize: 14);
  }

}