import 'package:clean_class_app_bersama/pages/bareng_menu_utama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NailaRegister extends StatefulWidget {
  const NailaRegister({super.key});

  @override
  State<NailaRegister> createState() => _NailaRegisterState();
}

class _NailaRegisterState extends State<NailaRegister> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  bool _isScure = true;
  IconData _icon = Icons.remove_red_eye;
  bool _rememberMe = true;
  void isScure() {
    setState(() {
      if (_isScure) {
        _isScure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isScure = true;
        _icon = CupertinoIcons.eye_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Create your account",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
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
              keyboardType: TextInputType.text,
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
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter your password',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffix: Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _confirmPassword,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter your confirmpassword',
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffix: Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_name.text == "nailaimut" &&
                        _email.text == "umminaila" &&
                        _password == "nailaxrpl1" &&
                        _confirmPassword == "nailaxrpl1") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BarengMenuUtama(),
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
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                TextButton(
                  onPressed: () => BarengMenuUtama(),
                  child: Text(
                    "Login?",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
