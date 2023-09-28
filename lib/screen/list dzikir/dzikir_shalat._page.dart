import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';

import '../../widget/doa.dart';

class DzikirShalat extends StatefulWidget {
  const DzikirShalat({super.key});

  @override
  State<DzikirShalat> createState() => _DzikirShalatState();
}

class _DzikirShalatState extends State<DzikirShalat> {
  int angka = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Dzikir Sehabis Shalat'),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Doa(
                    doa:
                        'أَسْتَغْفِرُ اللهَ (3x) اَللَّهُمَّ أَنْتَ السَّلاَمُ، وَمِنْكَ السَّلاَمُ، تَبَارَكْتَ يَا ذَا الْجَلاَلِ وَاْلإِكْرَامِ',
                    latin:
                        'Astaghfirullah (3x). Allahumma antas salaam wa minkas salaam tabaarokta yaa dzal jalaali wal ikrom',
                    arti:
                        'Aku minta ampun kepada Allah,” (3x). Lantas membaca: “Ya Allah, Engkau pemberi keselamatan, dan dariMu keselamatan, Maha Suci Engkau, wahai Tuhan Yang Pemilik Keagungan dan Kemuliaan” (HR. Muslim no. 591)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ، اَللَّهُمَّ لاَ مَانِعَ لِمَا أَعْطَيْتَ، وَلاَ مُعْطِيَ لِمَا مَنَعْتَ، وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ',
                    latin:
                        'Laa ilaha illallah wahdahu laa syarika lah, lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir. Allahumma laa maani’a lima a’thoita wa laa mu’thiya limaa mana’ta wa laa yanfau dzal jaddi minkal jaddu.',
                    arti:
                        'Tiada Rabb yang berhak disembah selain Allah Yang Maha Esa, tidak ada sekutu bagiNya. BagiNya puji dan bagi-Nya kerajaan. Dia Maha Kuasa atas segala sesuatu. Ya Allah, tidak ada yang mencegah apa yang Engkau berikan dan tidak ada yang memberi apa yang Engkau cegah. Tidak berguna kekayaan dan kemuliaan itu bagi pemiliknya (selain iman dan amal shalihnya yang menyelamatkan dari siksaan). Hanya dari-Mu kekayaan dan kemuliaan” (HR. Bukhari no.6615, Muslim no.593)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ. لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللهِ، لاَ إِلَـهَ إِلاَّ اللهُ، وَلاَ نَعْبُدُ إِلاَّ إِيَّاهُ، لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ، لاَ إِلَـهَ إِلاَّ اللهُ مُخْلِصِيْنَ لَهُ الدِّيْنَ وَلَوْ كَرِهَ الْكَافِرُوْنَ',
                    latin:
                        'Laa ilaha illallah wahdahu laa syarika lah. Lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir. Laa hawla wa laa quwwata illa billah. Laa ilaha illallah wa laa na’budu illa iyyah. Lahun ni’mah wa lahul fadhl wa lahuts tsanaaul hasan. Laa ilaha illallah mukhlishiina lahud diin wa law karihal kaafiruun',
                    arti:
                        'Tiada Rabb (yang berhak disembah) kecuali Allah, Yang Maha Esa, tidak ada sekutu bagiNya. BagiNya kerajaan dan pujaan. Dia Mahakuasa atas segala sesuatu. Tidak ada daya dan kekuatan kecuali (dengan pertolongan) Allah. Tiada Rabb (yang hak disembah) kecuali Allah. Kami tidak menyembah kecuali kepadaNya. Bagi-Nya nikmat, anugerah dan pujaan yang baik. Tiada Rabb (yang hak disembah) kecuali Allah, dengan memurnikan ibadah kepadaNya, sekalipun orang-orang kafir sama benci” (HR. Muslim, no. 594)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'سُبْحَانَ اللهِ وَالْحَمْدُ لِلَّهِ وَاللهُ أَكْبَرُ    (33 ×) لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ',
                    latin:
                        'Subhanallah wal hamdulillah wallahu akbar (33 x). Laa ilaha illallah wahda, laa syarika lah. Lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir',
                    arti:
                        'Maha Suci Allah, segala puji bagi Allah, dan Allah Maha Besar (33 x). Tidak ada Rabb (yang berhak disembah) kecuali Allah Yang Maha Esa, tidak ada sekutu bagiNya. BagiNya kerajaan. BagiNya pujaan. Dia-lah Yang Mahakuasa atas segala sesuatu” (HR. Muslim no. 597)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    latin:
                        'Membaca surat Al-Ikhlas, Al-Falaq dan An-Naas setiap selesai shalat (fardhu) (HR. Abu Daud no. 1523, dishahikan Al Albani dalam Shahih Abu Daud',
                  ),
                  SizedBox(height: 15),
                  Doa(
                      latin:
                          'Membaca ayat Kursi setiap selesai shalat (fardhu) (HR. An Nasa-i no. 9928, Ath Thabrani no.7532, dishahihkan Al Albani dalam Shahih Al Jami’ no.6464)'),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِيْ وَيُمِيْتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ. 10× بعد صلاة المغرب والصبح',
                    latin:
                        'Laa ilaha illallah wahdahu laa syarika lah. Lahul mulku wa lahul hamdu yuhyi wa yumiit wa huwa ‘ala kulli syai-in qodiir',
                    arti:
                        'Tiada Rabb yang berhak disembah kecuali Allah Yang Maha Esa, tiada sekutu bagiNya, bagiNya kerajaan, bagi-Nya segala puja. Dia-lah yang menghidupkan (orang yang sudah mati atau memberi roh janin yang akan dilahirkan) dan yang mematikan. Dia-lah Yang Mahakuasa atas segala sesuatu.” (Dibaca 10 x setiap sesudah shalat Maghrib dan Subuh)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلاً مُتَقَبَّلاً',
                    latin:
                        'Allahumma inni as-aluka ‘ilman naafi’a, wa rizqon thoyyiba, wa ‘amalan mutaqobbala',
                    arti:
                        'Ya Allah, sesungguhnya aku mohon kepadaMu ilmu yang bermanfaat, rezeki yang halal dan amal yang diterima.” (Dibaca setelah salam shalat Shubuh) (HR. Ibnu Majah no. 762, dishahihkan Al Albani dalam Shahih Ibni Majah)',
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text(
            "$angka",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: backgroundColor,
          height: 75,
          shape: const CircularNotchedRectangle(),
          notchMargin: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      angka++;
                    });
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 45,
                  )),
              IconButton(
                  onPressed: () {
                    if (angka > 0) {
                      setState(() {
                        angka--;
                      });
                    }
                  },
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.white,
                    size: 45,
                  )),
            ],
          ),
        ));
  }
}
