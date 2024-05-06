import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/viewmodel/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Quotes extends StatelessWidget {
  const Quotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return Container(
          margin: EdgeInsets.all(1.h),
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: themeProvider.isLight ? pumpkinOrange : Colors.grey.shade800,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 57.w,
                    child: Text(
                        'Ingatlah, hanya dengan mengingat Allah hati menjadi tenteram. (QS. Ar-ra\'d: 28)',
                        style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ],
              ),
              Image.asset(
                'assets/quotes.png',
                width: 20.w,
              ),
            ],
          ),
        );
      },
    );
  }
}
