import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../theme/style.dart';

class Content extends StatelessWidget {
  final String? doa;
  final String? latin;
  const Content({super.key, this.doa, this.latin});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(2.h),
        margin: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: earlyDawn,
        ),
        child: Column(
          children: [
            doa != null ? arab(doa!) : const SizedBox(height: 0),
            SizedBox(height: 1.h),
            latin != null ? indo(latin!) : const SizedBox(height: 0),
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
          color: Colors.black,
          fontSize: 18.sp,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 1.5.h),
    ],
  );
}

Widget indo(String isi) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        isi,
        style: const TextStyle(
          color: Colors.black,
        ),
        textAlign: TextAlign.left,
      ),
    ],
  );
}
