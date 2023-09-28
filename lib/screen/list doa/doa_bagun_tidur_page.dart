import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/doa.dart';
import 'package:flutter/material.dart';

class DoaBangunTidurPage extends StatelessWidget {
  const DoaBangunTidurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Doa Bangun Tidur',
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
                      'الحَمْدُ لِلهِ الًّذِيْ أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُوْرُ',
                  latin:
                      "Alhamdulillâhil ladzî ahyânâ ba‘da mâ amâtanâ wa ilaihin nusyûr",
                  arti:
                      "Segala puji bagi Allah, Tuhan yang menghidupkan kami setelah Ia mematikan kami. Kepada-Nya lah kebangkitan hari Kiamat",
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
                          'Sunah Setelah Bangun Tidur',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '1. Membaca doa bangun tidur dan memperbanyak dzikir',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '2. Mencuci tangan ',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '3. Bersiwak',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '4. Berwudhu untuk menghilangkan malas',
                          style: whiteTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '5. Bersegera untuk shalat',
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
