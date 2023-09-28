import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: grey)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: onPressed,
        leading: Image.asset(
          'assets/iconList.png',
          scale: 4,
        ),
        title: Text(title,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: purple,
        ),
      ),
    );
  }
}
