import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_bagun_tidur_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_keluar_kamar_mandi.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_keluar_rumah_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_masuk_kamar_mandi_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_masuk_rumah_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_setelah_shalat_dhuha.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20doa/doa_tidur_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20dzikir/dzikir_pagi_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20dzikir/dzikir_petang_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/list%20dzikir/dzikir_shalat._page.dart';
import 'package:aplikasi_kumpulan_doa/screen/home_page.dart';
import 'package:aplikasi_kumpulan_doa/screen/splash_screen.dart';
import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
              color: backgroundColor,
              centerTitle: true,
              elevation: 0,
              titleTextStyle: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ))),
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const MyHomePage(),
        '/doa_tidur': (context) => const DoaTidurPage(),
        '/doa_bangun_tidur': (context) => const DoaBangunTidurPage(),
        '/doa_keluar_rumah': (context) => const DoaKeluarRumahPage(),
        '/doa_masuk_rumah': (context) => const DoaMasukRumahPage(),
        '/doa_masuk_kamar_mandi': (context) => const DoaMasukKamarMandiPage(),
        '/doa_keluar_kamar_mandi': (context) => const DoaKeluarKamarMandiPage(),
        '/doa_setelah_shalat_dhuha': (context) =>
            const DoaSetelahShalatDhuhaPage(),
        '/dzikir_shalat': (context) => const DzikirShalat(),
        '/dzikir_pagi': (context) => const DzikirPagi(),
        '/dzikir_petang': (context) => const DzikirPetang(),
      },
    );
  }
}
