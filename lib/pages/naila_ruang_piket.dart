import 'package:flutter/material.dart';

class NailaRuangPiket extends StatefulWidget {
  const NailaRuangPiket({super.key});

  @override
  State<NailaRuangPiket> createState() => _NailaRuangPiketState();
}

class _NailaRuangPiketState extends State<NailaRuangPiket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Ruang Piket"),
      ),
      body: Container(
      Card(

        child: Text("Pilih hari"),
      ),
    );
  }
}
