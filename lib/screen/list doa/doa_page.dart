import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/list.dart';
import 'package:aplikasi_kumpulan_doa/widget/main_container.dart';
import 'package:flutter/material.dart';

class DoaPage extends StatefulWidget {
  const DoaPage({super.key});

  @override
  State<DoaPage> createState() => _DoaPageState();
}

class _DoaPageState extends State<DoaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              const MainContainer(imageUrl: 'assets/quran.png'),
              const SizedBox(height: 30),
              ListView(
                shrinkWrap: true,
                children: [
                  MainList(
                      title: 'Doa Tidur',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_tidur');
                      }),
                  MainList(
                      title: 'Doa Bangun Tidur',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_bangun_tidur');
                      }),
                  MainList(
                      title: 'Doa Keluar Rumah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_keluar_rumah');
                      }),
                  MainList(
                      title: 'Doa Masuk Rumah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_masuk_rumah');
                      }),
                  MainList(
                      title: 'Doa Masuk Kamar Mandi ',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_masuk_kamar_mandi');
                      }),
                  MainList(
                      title: 'Doa Keluar Kamar Mandi',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_keluar_kamar_mandi');
                      }),
                  MainList(
                      title: 'Doa Setelah Shalat Dhuha',
                      onPressed: () {
                        Navigator.pushNamed(context, '/doa_setelah_shalat_dhuha');
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
