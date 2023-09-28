import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/doa.dart';
import 'package:flutter/material.dart';

class DoaSetelahShalatDhuhaPage extends StatelessWidget {
  const DoaSetelahShalatDhuhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Doa Setelah Shalat Dhuha',
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
                      'اَللّٰهُمَّ اِنَّ الضُّحَآءَ ضُحَاءُكَ وَالْبَهَاءَ بَهَاءُكَ وَالْجَمَالَ جَمَالُكَ وَالْقُوَّةَ قُوَّتُكَ وَالْقُدْرَةَ قُدْرَتُكَ وَالْعِصْمَةَ عِصْمَتُكَ\n\nاَللّٰهُمَّ اِنْ كَانَ رِزْقِى فِى السَّمَآءِ فَأَنْزِلْهُ وَاِنْ كَانَ فِى اْلاَرْضِ فَأَخْرِجْهُ وَاِنْ كَانَ مُعَسَّرًا فَيَسِّرْهُ وَاِنْ كَانَ حَرَامًا فَطَهِّرْهُ وَاِنْ كَانَ بَعِيْدًا فَقَرِّبْهُ بِحَقِّ ضُحَاءِكَ وَبَهَاءِكَ وَجَمَالِكَ وَقُوَّتِكَ وَقُدْرَتِكَ آتِنِىْ مَآاَتَيْتَ عِبَادَكَ الصَّالِحِيْنَ',
                  latin:
                      "Allahumma innad-duhaa'a duhaa'uka wal bahaa'a bahaa'uka wal jamaala jamaaluka wal quwwata quwwatuka wal-qudrota qudratuka wal 'ismata 'ismatuka.\n\nAllaahumma in kaana rizqii fis-samaa'i fa anzilhu, wa in kaana fil ardi fa akhrijhu, wa in kaana mu'assiran fa yassirhu, wa in kaana haraaman fa tahhirhu wa in kaana ba'iidan fa qarribhu bi haqqi duhaa'ika wa bahaa'ika wa jamaalika wa quwwatika wa qudratika, aatinii maa ataita 'ibaadakash-shalihiin",
                  arti:
                      "Ya Allah, bahwasanya waktu dluha itu waktu dluhaMu, kecantikan ialah kecantikanMu, keindahan itu keindahanMu, kekuatan itu kekuatanMu, kekuasaan itu kekuasaanMu, dan perlindungan itu, perlindunganMu.\n\nYa Allah, jika rizkiku masih diatas langit, turunkanlah .dan jika ada di dalam bumi, keluarkanlah, jika sukar mudahkanlah, jika haram sucikanlah, jika masih jauh dekatkanlah, berkat waktu dluha, keagungan, keindahan, kekuatan dan kekuasaanMu, limpahkanlah kepada kami segala yang telah Engkau limpahkan kepada hamba-hamba-Mu yang shaleh",
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
                          'Keutamaan Shalat Dhuha',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '1. Siapapun yang melaksanakan Sholat dhuha dengan langgeng, akan diampuni dosanya oleh Allah, sekalipun dosa itu sebanyak buih di lautan." (H.R Tirmidzi)',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '2. Barang siapa Sholat Dhuha 12 rakaat, Allah akan membuatkan untuknya istana di surga." (H.R. Tirmidzi dan Ibnu Majah) ',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '3. Barangsiapa yang masih berdiam diri di masjid atau tempat shalatnya setelah sholat subuh karena melakukan i\'tikaf, berzikir, dan melakukan dua rakaat sholat dhuha disertai tidak berkata sesuatu kecuali kebaikan, maka dosa-dosanya akan diampuni meskipun banyaknya melebihi buih di lautan." (HR Abu Daud)',
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
