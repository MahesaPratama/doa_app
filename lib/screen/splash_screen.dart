import 'dart:async';

import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Doa App',
                  style: whiteTextStyle.copyWith(
                      fontSize: 35, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              Image.asset(
                'assets/splash.png',
                scale: 4,
              ),
              const SizedBox(height: 30),
              Text(
                'Doa adalah obat bagi jiwa yang hampa, pikiran yang bimbang, dan hati yang terluka.',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
