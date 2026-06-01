import 'package:clean_class_app_bersama/pages/alensa_dasboard_page_halaman_pertama.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CleanClasApp());
}

class CleanClasApp extends StatefulWidget {
  const CleanClasApp({super.key});

  @override
  State<CleanClasApp> createState() => _CleanClasAppState();
}

class _CleanClasAppState extends State<CleanClasApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlensaDasboardpageHalamanpertama(),
    );
  }
}
