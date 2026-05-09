import 'package:flutter/material.dart';

class BarengMenuUtama extends StatefulWidget {
  const BarengMenuUtama({super.key});

  @override
  State<BarengMenuUtama> createState() => _BarengMenuUtamaState();
}

class _BarengMenuUtamaState extends State<BarengMenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Container(
                height: 20,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
