import 'package:clean_class_app_bersama/pages/naila_jadwal_piket.dart';
import 'package:clean_class_app_bersama/pages/naila_tambah_jadwal.dart';
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
                  height: 160,
                  width: 270,
                  child: Card(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    color: Colors.orange.shade50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome Clean Class App",
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
              Card(
                color: Colors.blue,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NailaJadwalPiket(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.account_balance,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NailaTambahJadwal(),
                      ),
                    );
                  },
                  icon: Icon(Icons.add, color: Colors.white, size: 80),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
