import 'package:flutter/material.dart';

import '../theme/style.dart';

class Doa extends StatelessWidget {
  final String? doa;
  final String? latin;
  final String? arti;
  const Doa({super.key, this.doa, this.latin, this.arti});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: purple),
        child: Column(
          children: [
            doa != null ? arab(doa!) : const SizedBox(height: 0),
            latin != null ? indo(latin!) : const SizedBox(height: 0),
            arti != null ? indo(arti!) : const SizedBox(height: 0),
          ],
        ));
  }
}

Widget arab(String isi) {
  return Column(
    children: [
      Text(
        isi,
        style: TextStyle(
          color: white,
          fontSize: 22,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 15),
    ],
  );
}

Widget indo(String isi) {
  return Column(
    children: [
      Text(
        isi,
        style: TextStyle(
          color: white,
        ),
        textAlign: TextAlign.left,
      ),
      const SizedBox(height: 10),
    ],
  );
}
