import 'package:clean_class_app_bersama/pages/auth/alensa_login.dart';
import 'package:flutter/material.dart';

class NailaSplashScreen2 extends StatefulWidget {
  const NailaSplashScreen2({super.key});

  @override
  State<NailaSplashScreen2> createState() => _NailaSplashScreen2State();
}

class _NailaSplashScreen2State extends State<NailaSplashScreen2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.55,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(120),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/iconclean.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Clean Class App',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Betters teamwork for a better room',
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          SizedBox(height: 15),
          SizedBox(
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlensaLogin()),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
