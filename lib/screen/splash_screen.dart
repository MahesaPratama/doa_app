import 'dart:async';import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, '/tabbar', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff040C23),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('Eling Gusti',
                      style: whiteTextStyle.copyWith(
                          fontSize: 27.sp, fontWeight: FontWeight.bold)),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/splash_icon.png',
                  width: 100.w,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Doa adalah obat bagi jiwa yang hampa, pikiran yang bimbang, dan hati yang terluka.',
                    style: whiteTextStyle.copyWith(fontSize: 16.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
