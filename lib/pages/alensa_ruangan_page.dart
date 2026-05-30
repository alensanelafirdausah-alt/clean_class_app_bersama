import 'package:clean_class_app_bersama/models/alensa_ruangan_model.dart';
import 'package:clean_class_app_bersama/pages/alensa_detail_ruangan_page.dart';
import 'package:clean_class_app_bersama/service/alensa_ruangan_service.dart';
import 'package:flutter/material.dart';

class AlensaRuanganPage extends StatefulWidget {
  const AlensaRuanganPage({super.key});

  @override
  State<AlensaRuanganPage> createState() => _AlensaRuanganPageState();
}

class _AlensaRuanganPageState extends State<AlensaRuanganPage> {
  final controler = TextEditingController();
  List<AlensaRuanganModel> nela = alen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Ruangan')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              controller: controler,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Cari ruangn',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              onChanged: srch,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Ruangan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: nela.length,
              itemBuilder: (context, v) {
                return Card(
                  color: Colors.orange.shade50,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlensaDetailRuanganPage(id: alen[v].id),
                        ),
                      );
                    },
                    leading: Image.asset(alen[v].image),
                    title: Text(nela[v].namaRuangan),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void srch(String query) {
    final suggestions = alen.where((ruangan) {
      final bookTitle = ruangan.namaRuangan.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();
    setState(() => nela = suggestions);
  }
}
