import 'package:clean_class_app_bersama/models/alensa_dasboard_model.dart';
import 'package:clean_class_app_bersama/pages/alensa_profile_page.dart';
import 'package:clean_class_app_bersama/pages/alensa_setting_page.dart';
import 'package:clean_class_app_bersama/pages/naila_menu_utama.dart';
import 'package:flutter/material.dart';

class AlensaDasboardpageHalamanpertama extends StatefulWidget {
  const AlensaDasboardpageHalamanpertama({super.key});

  @override
  State<AlensaDasboardpageHalamanpertama> createState() =>
      _AlensaDasboardpageHalamanpertamaState();
}

class _AlensaDasboardpageHalamanpertamaState
    extends State<AlensaDasboardpageHalamanpertama> {
  int slactedindex = 0;
  Map<int, AlensaDasboardModel> alen = {
    0: AlensaDasboardModel(page: NailaMenuUtama(), icone: Icons.home),
    1: AlensaDasboardModel(page: AlensaSettingPage(), icone: Icons.settings),
    2: AlensaDasboardModel(page: AlensaProfilePage(), icone: Icons.person),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: slactedindex,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            slactedindex = value;
          });
        },
        backgroundColor: Colors.blue,
        items: alen.entries
            .map(
              (a) => BottomNavigationBarItem(
                icon: Icon(a.value.icone, color: Colors.white),
                label: '',

                activeIcon: Icon(a.value.icone, color: Colors.blue),
              ),
            )
            .toList(),
      ),
      body: alen[slactedindex]!.page,
    );
  }
}
