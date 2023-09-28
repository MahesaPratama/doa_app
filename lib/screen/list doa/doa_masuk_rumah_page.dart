import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/doa.dart';
import 'package:flutter/material.dart';

class DoaMasukRumahPage extends StatelessWidget {
  const DoaMasukRumahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Doa Masuk Rumah',
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
                      'اللّٰهُمَّ إنِّي أَسْأَلُكَ خَيْرَ المَوْلِجِ وَ خَيْرَ المَخْرَجِ, بِاسْمِ اللّٰهِ وَ لَجْنَا، بِاسْمِ اللّٰهِ خَرَجْنَا، وَ عَلَى اللّٰهِ رَبِّنَا تَوَكَّلْنَا',
                  latin:
                      "Allahumma innii as-aluka khairal mauliji, bismillahi wa lajnaa, wa bismillahi kharajnaa, wa 'alallahi rabbanaa tawakkalnaa",
                  arti:
                      "Ya Allah, sesungguhnya aku mohon kepada-Mu kebaikan tempat masuk dan kebaikan tempat keluar, dengan menyebut nama-Mu kami masuk, dengan menyebut nama-Mu kami keluar, dan hanya kepada Allah, Tuhan kami, kami bertawakal",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
