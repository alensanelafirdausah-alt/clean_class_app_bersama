import 'package:clean_class_app_bersama/models/alensa_anggota_piket_model.dart';
import 'package:clean_class_app_bersama/pages/alensa_detail_anggota_piket.dart';
import 'package:clean_class_app_bersama/service/alensa_anggota_piket_service.dart';
import 'package:flutter/material.dart';

class AlensaAnggotaPiket extends StatefulWidget {
  const AlensaAnggotaPiket({super.key});

  @override
  State<AlensaAnggotaPiket> createState() => _AlensaAnggotaPiketState();
}

class _AlensaAnggotaPiketState extends State<AlensaAnggotaPiket> {
  final controler = TextEditingController();
  List<AlensaAnggotaPiketModel> alen = aln;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('anggota piket'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              controller: controler,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              onChanged: search,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: alen.length,
              itemBuilder: (context, i) {
                final book = alen[i];
                return ListTile(
                  leading: Image.asset(
                    book.Image,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(book.day),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AlensaDetailAnggotaPiket(id: book.id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void search(String query) {
    final suggestions = aln.where((book) {
      final bookTitle = book.day.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();
    setState(() => alen = suggestions);
  }
}
