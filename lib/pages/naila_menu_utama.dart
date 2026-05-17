import 'package:clean_class_app_bersama/pages/naila_jadwal_piket.dart';
import 'package:clean_class_app_bersama/pages/naila_ruang_piket.dart';
import 'package:flutter/material.dart';

class NailaMenuUtama extends StatefulWidget {
  const NailaMenuUtama({super.key});

  @override
  State<NailaMenuUtama> createState() => _NailaMenuUtamaState();
}

class _NailaMenuUtamaState extends State<NailaMenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 280,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 150,
                  width: 300,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    color: Colors.orangeAccent.shade100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome\nClean Class App",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NailaJadwalPiket()),
                  );
                },
                icon: Icon(Icons.calendar_month, color: Colors.blue, size: 20),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NailaRuangPiket()),
                  );
                },
                icon: Icon(Icons.account_balance, color: Colors.blue, size: 20),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NailaJadwalPiket(),
                    ),
                  );
                },
                icon: Icon(Icons.card_giftcard, color: Colors.blue, size: 20),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NailaJadwalPiket(),
                    ),
                  );
                },
                icon: Icon(Icons.add, color: Colors.blue, size: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
