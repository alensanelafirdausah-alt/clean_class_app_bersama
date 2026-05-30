import 'package:clean_class_app_bersama/pages/alensa_dasboard_page_halaman_pertama.dart';
import 'package:clean_class_app_bersama/pages/auth/naila_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlensaLogin extends StatefulWidget {
  const AlensaLogin({super.key});

  @override
  State<AlensaLogin> createState() => _AlensaLoginState();
}

class _AlensaLoginState extends State<AlensaLogin> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;
  void isSecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isSecure = true;
        _icon = CupertinoIcons.eye_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.black],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome to our clean class app',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _username,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "enter username",
                      labelText: "user name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefix: Icon(Icons.person, color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _password,
                    keyboardType: TextInputType.text,
                    obscureText: _isSecure,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      labelText: "Tulis Password Kamu",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffix: IconButton(
                        onPressed: isSecure,
                        icon: Icon(_icon),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_username.text == "aaa" &&
                              _password.text == "111") {
                            Navigator.pushReplacement(
                              context,

                              MaterialPageRoute(
                                builder: (context) =>
                                    AlensaDasboardpageHalamanpertama(),
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Username atau Password salah"),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Text("login"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NailaRegister(),
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
