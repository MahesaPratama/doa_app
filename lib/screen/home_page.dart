import 'package:flutter/material.dart';
import '../theme/style.dart';
import 'list doa/doa_page.dart';
import 'list dzikir/dzikri_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: Image.asset('assets/appIcon.png'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset('assets/appIcon2.png'),
            ),
          ],
          title: Text(
            'Kumpulan Doa',
            style: whiteTextStyle,
          ),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: purple,
            dividerColor: grey.withOpacity(0.1),
            labelColor: white,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
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
      ),
    );
  }
}
