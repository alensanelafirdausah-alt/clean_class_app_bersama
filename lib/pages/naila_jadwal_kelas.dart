import 'package:clean_class_app_bersama/services/naila_tambah_jadwal_service.dart';
import 'package:flutter/material.dart';

class NailaJadwalKelas extends StatefulWidget {
  const NailaJadwalKelas({super.key});

  @override
  State<NailaJadwalKelas> createState() => _NailaJadwalKelasState();
}

class _NailaJadwalKelasState extends State<NailaJadwalKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 30),
        title: Text(
          "Jadwal Kelas",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: naila.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/iconclean.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      naila[i].hari,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      naila[i].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
