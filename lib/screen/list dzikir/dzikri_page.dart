import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/widget/list.dart';
import 'package:aplikasi_kumpulan_doa/widget/main_container.dart';
import 'package:flutter/material.dart';

class DzikirPage extends StatefulWidget {
  const DzikirPage({super.key});

  @override
  State<DzikirPage> createState() => _DzikirPageState();
}

class _DzikirPageState extends State<DzikirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              const MainContainer(imageUrl: 'assets/tasbih.png'),
              const SizedBox(height: 30),
              MainList(
                  title: 'Dzikir Setelah Shalat',
                  onPressed: () {
                    Navigator.pushNamed(context, '/dzikir_shalat');
                  }),
              MainList(
                  title: 'Dzikir Pagi',
                  onPressed: () {
                    Navigator.pushNamed(context, '/dzikir_pagi');
                  }),
              MainList(
                  title: 'Dzikir Petang',
                  onPressed: () {
                    Navigator.pushNamed(context, '/dzikir_petang');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
