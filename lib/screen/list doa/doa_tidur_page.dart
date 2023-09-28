import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/doa.dart';
import 'package:flutter/material.dart';

class DoaTidurPage extends StatelessWidget {
  const DoaTidurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Doa Tidur',
          style: whiteTextStyle,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Doa(
                  doa: 'بِاسْمِكَ اللّهُمَّ أَحْيَا وَبِاسْمِكَ أَمُوتُ',
                  latin: "Bismika allahumma ahyaa wa bismika amuut.",
                  arti: "Dengan nama-Mu, Ya Allah, aku hidup dan aku mati.",
                ),
                const SizedBox(height: 25),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), color: purple),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sunah Sebelum Tidur',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '1. Rasulullah Mengambil Wudhu Sebelum Tidur',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '2. Amalan Sebelum Tidur Dengan Membaca Ayat Kursi ',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '3. Membaca Surat Al-Ikhlas, Al-Falaq, dan An-Naas',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '4. Rasulullah Memperbanyak Dzikir',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '5. Rasulullah Menganjurkan Untuk Menunda Tidur Sebelum Waktu Isya',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '6. Rasulullah Menganjurkan Untuk Membersihkan Tempat Tidur',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '7. Rasulullah Membaca Doa Tidur',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
