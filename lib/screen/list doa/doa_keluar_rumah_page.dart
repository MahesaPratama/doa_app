import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/doa.dart';
import 'package:flutter/material.dart';

class DoaKeluarRumahPage extends StatelessWidget {
  const DoaKeluarRumahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Doa Keluar Rumah',
          style: whiteTextStyle,
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Doa(
                  doa:
                      'ِاسْمِ اللّٰهِ تَوَكَّلْتُ عَلَى اللّٰهِ وَ لَا حَوْلَ وَلَا قُوَّةَ اِلَّا بِاللّٰهِ',
                  latin:
                      "Bismillahi tawakkaltu 'alallahi wa laa haula wa laa quwwata illaa billahi",
                  arti:
                      "Dengan menyebut nama Alllah, aku bertawakkal kepada-Nya dan tidak daya dan kekuatan kecuali dengan Allah",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
