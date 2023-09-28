import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  final String imageUrl;
  const MainContainer({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
      ),
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Asslamualaikum',
                  style: whiteTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text('Mahesa Pratama',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                    )),
              ],
            ),
          ),
          Image.asset(
            imageUrl,
            scale: 5,
          ),
        ],
      ),
    );
  }
}
