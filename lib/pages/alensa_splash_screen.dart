import 'dart:async';

import 'package:flutter/material.dart';

class AlensaSplashScreen extends StatefulWidget {
  const AlensaSplashScreen({super.key});

  @override
  State<AlensaSplashScreen> createState() => _AlensaSplashScreenState();
}

class _AlensaSplashScreenState extends State<AlensaSplashScreen> {
  late Timer w;
  @override
  void initState() {
    w = Timer.periodic(
      const Duration(seconds: 30),
      (Timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AlensaSplashScreen()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    w.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: ClipOval(
            child: Image.network(
              'assets/images/bersih.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
