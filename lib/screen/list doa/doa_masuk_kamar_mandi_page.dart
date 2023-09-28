import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/doa.dart';
import 'package:flutter/material.dart';

class DoaMasukKamarMandiPage extends StatelessWidget {
  const DoaMasukKamarMandiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Doa Masuk Kamar Mandi',
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
                  doa:
                      'اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ',
                  latin:
                      "Allahumma innii a'uudzubika minal khubutsi wal khabaaitsi",
                  arti:
                      "Sesungguhnya aku memohon perlindungan kepada-Mu dari (godaan) setan laki-laki dan setan perempuan",
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
                          'Adab di Kamar Mandi',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '1. Mulailah dengan kaki kiri saat masuk ke kamar mandi',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '2. Jangan menghadap ke arah kiblat saat berada di kamar mandi',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '3. Jangan membuang air kecil atau besar sembarangan atau di lantai toilet',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '4. Duduk atau jongkok saat buang air kecil atau besar',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '5. Melakukan instinja dengan tangan kiri',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '6. Mulailah dengan kaki kanan saat keluar dair kamar mandi',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
