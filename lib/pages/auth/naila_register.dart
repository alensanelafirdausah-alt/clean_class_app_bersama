import 'package:clean_class_app_bersama/pages/auth/alensa_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NailaRegister extends StatefulWidget {
  const NailaRegister({super.key});

  @override
  State<NailaRegister> createState() => _NailaRegisterState();
}

class _NailaRegisterState extends State<NailaRegister> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.indigo],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Create your account",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your username',
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefix: Icon(Icons.person, color: Colors.grey),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefix: Icon(Icons.email, color: Colors.grey),
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
                  suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _confirmPassword,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your confirmpassword',
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_name.text == "11" &&
                          _email.text == "aa" &&
                          _password.text == "a" &&
                          _confirmPassword.text == "a") {
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
                            title: Text("Ada kesalahan mohon dicek ulang!!"),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text("Sign Up"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlensaLogin()),
                      );
                    },
                    child: Text(
                      "Login?",
                      style: TextStyle(fontSize: 15, color: Colors.yellow),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
