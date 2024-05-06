import 'package:aplikasi_kumpulan_doa/viewmodel/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'doa_page.dart';
import 'dzikri_page.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: themeProvider.isLight ? toryBlue : Colors.black,
            toolbarHeight: 0,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: earlyDawn,
              dividerColor: earlyDawn.withOpacity(0.4),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.4),
              labelStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              tabs: const [
                Tab(text: 'Doa'),
                Tab(text: 'Dzikir'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              DoaPage(),
              DzikirPage(),
            ],
          ),
        );
      }),
    );
  }
}
