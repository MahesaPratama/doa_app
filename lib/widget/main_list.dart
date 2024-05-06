import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/viewmodel/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainList extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const MainList({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return Container(
          margin: EdgeInsets.all(1.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: earlyDawn,
            border: Border.all(
                color: themeProvider.isLight
                    ? pumpkinOrange
                    : Colors.grey.shade600),
          ),
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: ListTile(
            onTap: onPressed,
            title: Text(title,
                style: blackTextStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                )),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color:
                  themeProvider.isLight ? pumpkinOrange : Colors.grey.shade600,
            ),
          ),
        );
      },
    );
  }
}
