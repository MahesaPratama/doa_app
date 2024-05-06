import 'package:aplikasi_kumpulan_doa/screen/dzikir_detail_page.dart';
import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/viewmodel/theme_provider.dart';
import 'package:aplikasi_kumpulan_doa/widget/main_list.dart';
import 'package:aplikasi_kumpulan_doa/widget/quotes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DzikirPage extends StatefulWidget {
  const DzikirPage({super.key});

  @override
  State<DzikirPage> createState() => _DzikirPageState();
}

class _DzikirPageState extends State<DzikirPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
            backgroundColor: pumpkinOrange,
          ),
          backgroundColor: themeProvider.isLight ? toryBlue : Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Column(
                children: [
                  const Quotes(),
                  MainList(
                      title: 'Dzikir Pagi',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DzikirDetailPage(sumber: 'pagi')));
                      }),
                  MainList(
                      title: 'Dzikir Sore',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DzikirDetailPage(sumber: 'sore')));
                      }),
                  MainList(
                      title: 'Dzikir Setelah Shalat',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DzikirDetailPage(sumber: 'solat')));
                      }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
