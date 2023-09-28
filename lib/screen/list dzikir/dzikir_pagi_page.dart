import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:flutter/material.dart';

import '../../widget/doa.dart';

class DzikirPagi extends StatefulWidget {
  const DzikirPagi({super.key});

  @override
  State<DzikirPagi> createState() => _DzikirPagiState();
}

class _DzikirPagiState extends State<DzikirPagi> {
  int angka = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Dzikir Pagi'),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Doa(
                    doa: 'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
                    latin: 'Audzubillahiminasyaitonirojim',
                    arti:
                        'Aku berlindung kepada Allah dari setan yang terkutuk',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللّٰهُ لَآ اِلٰهَ اِلَّا هُوَۚ اَلْحَيُّ الْقَيُّوْمُ ەۚ لَا تَأْخُذُهٗ سِنَةٌ وَّلَا نَوْمٌۗ لَهٗ مَا فِى السَّمٰوٰتِ وَمَا فِى الْاَرْضِۗ مَنْ ذَا الَّذِيْ يَشْفَعُ عِنْدَهٗٓ اِلَّا بِاِذْنِهٖۗ يَعْلَمُ مَا بَيْنَ اَيْدِيْهِمْ وَمَا خَلْفَهُمْۚ وَلَا يُحِيْطُوْنَ بِشَيْءٍ مِّنْ عِلْمِهٖٓ اِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرْسِيُّهُ السَّمٰوٰتِ وَالْاَرْضَۚ وَلَا يَـُٔوْدُهٗ حِفْظُهُمَاۚ وَهُوَ الْعَلِيُّ الْعَظِيْمُ ٢٥٥',
                    latin:
                        'Allāhu lā ilāha illā huw, al-ḥayyul-qayyụm, lā ta`khużuhụ sinatuw wa lā na`ụm, lahụ mā fis-samāwāti wa mā fil-arḍ, man żallażī yasyfa\'u \'indahū illā bi`iżnih, ya\'lamu mā baina aidīhim wa mā khalfahum, wa lā yuḥīṭụna bisyai`im min \'ilmihī illā bimā syā`, wasi\'a kursiyyuhus-samāwāti wal-arḍ, wa lā ya`ụduhụ ḥifẓuhumā, wa huwal-\'aliyyul-\'aẓīm',
                    arti:
                        'Allah, tidak ada tuhan kecuali Dia, Yang Maha hidup lagi terus-menerus mengurus (makhluk-Nya). Dia tidak dilanda oleh rasa kantuk dan tidak (pula) oleh tidur. Milik-Nyalah apa yang ada di langit dan apa yang ada di bumi. Tidak ada yang dapat memberi syafaat di sisi-Nya tanpa izin-Nya. Dia mengetahui apa yang ada di hadapan mereka dan apa yang berada di belakang mereka. Mereka tidak mengetahui sesuatu apa pun dari ilmu-Nya, kecuali apa yang Dia kehendaki. Kursi-Nya (ilmu dan kekuasaan-Nya) meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dialah yang Maha Tinggi lagi Maha Agung',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    latin:
                        'Membaca surat Al-Ikhlas, surat Al-Falaq, dan surat An-Naas (Baca 3x)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ. رَبِّ أَسْأَلُكَ خَيْرَ مَا فِيْ هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوْذُ بِكَ مِنْ شَرِّ مَا فِيْ هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ، رَبِّ أَعُوْذُ بِكَ مِنَ الْكَسَلِ وَسُوْءِ الْكِبَرِ، رَبِّ أَعُوْذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ',
                    latin:
                        'Ash-bahnaa wa ash-bahal mulku lillah walhamdulillah, laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa \'ala kulli syai-in qodir. Robbi as-aluka khoiro maa fii hadzal yaum wa khoiro maa ba\'dahu, wa a\'udzu bika min syarri maa fii hadzal yaum wa syarri maa ba\'dahu. Robbi a\'udzu bika minal kasali wa su-il kibar. Robbi a\'udzu bika min \'adzabin fin naari wa \'adzabin fil qobri',
                    arti:
                        'Kami telah memasuki waktu pagi dan kerajaan hanya milik Allah, segala puji bagi Allah. Tidak ada Rabb (yang berhak disembah) kecuali Allah semata yang maha esa, tiada sekutu bagi-Nya. Milik Allah kerajaan dan bagi-Nya pujian. Dia-lah Yang Maha kuasa atas segala sesuatu. Ya Rabbku, aku mohon kepada-Mu kebaikan di hari ini dan kebaikan sesudahnya. Aku berlindung kepada-Mu dari kejahatan hari ini serta kejahatan kemudian. Ya Rabbku, aku berlindung kepada-Mu dari kemalasan juga kejelekan di hari tua. Ya Rabbku, aku berlindung kepada-Mu dari siksaan di neraka dan siksaan di alam kubur',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوْتُ وَإِلَيْكَ النُّشُوْرُ',
                    latin:
                        'Allahumma bika ash-bahnaa wa bika amsaynaa wa bika nahyaa wa bika namuutu wa ilaikan nusyuur',
                    arti:
                        'Ya Rabb, dengan rahmat dan pertolongan-Mu kami memasuki waktu pagi, dan dengan rahmat dan pertolongan-Mu kami memasuki waktu petang. Dengan rahmat dan pertolongan-Mu kami hidup serta dengan kehendak-Mu (juga) kami mati. Dan kepada-Mu kebangkitan (bagi semua makhluk)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللَّهُمَّ أَنْتَ رَبِّيْ لاَ إِلَـهَ إِلاَّ أَنْتَ، خَلَقْتَنِيْ وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوْذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوْءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوْءُ بِذَنْبِيْ فَاغْفِرْ لِيْ فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوْبَ إِلاَّ أَنْتَ.',
                    latin:
                        'Allahumma anta robbii laa ilaha illa anta, kholaqtanii wa anaa \'abduka wa anaa \'ala \'ahdika wa wa\'dika mas-tatho\'tu. A\'udzu bika min syarri maa shona\'tu. Abu-u laka bi ni\'matika \'alayya wa abu-u bi dzambii. Fagh-firlii fainnahu laa yagh-firudz dzunuuba illa anta',
                    arti:
                        'Ya Allah, Engkau adalah Rabbku, tidak ada Rabb yang berhak disembah kecuali Engkau, Engkaulah yang menciptakanku. Aku adalah hamba-Mu. Aku akan setia pada perjanjianku pada-Mu (yaitu aku akan mentauhidkan-Mu) semampuku dan aku yakin akan janji-Mu (berupa surga untukku). Aku berlindung kepada-Mu dari kejelekan yang kuperbuat. Aku mengakui nikmat-Mu kepadaku juga aku mengakui dosaku. Oleh karena itu, (tolong) ampunilah aku. Sesungguhnya tiada yang mengampuni dosa kecuali Engkau',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        '(Baca 4x) اَللَّهُمَّ إِنِّيْ أَصْبَحْتُ أُشْهِدُكَ وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتَكَ وَجَمِيْعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللهُ لاَ إِلَـهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيْكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُوْلُكَ',
                    latin:
                        'Allahumma inni ash-bahtu usy-hiduka wa usy-hidu hamalata \'arsyika wa malaa-ikatak wa jami\'a kholqik, annaka antallahu laa ilaha illa anta wahdaka laa syariika lak, wa anna Muhammadan \'abduka wa rosuuluk',
                    arti:
                        'Ya Allah, sesungguhnya aku di waktu pagi ini mempersaksikan Engkau, malaikat yang memikul \'Arsy-Mu, malaikat-malaikat dan seluruh makhluk-Mu, bahwa sesungguhnya Engkau adalah Allah, tiada ilah yang berhak disembah kecuali Engkau semata, tiada sekutu bagi-Mu dan sesungguhnya Muhammad adalah hamba dan utusan-Mu',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَاْلآخِرَةِ، اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِيْنِيْ وَدُنْيَايَ وَأَهْلِيْ وَمَالِيْ اللَّهُمَّ اسْتُرْ عَوْرَاتِى وَآمِنْ رَوْعَاتِى. اَللَّهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِيْ، وَعَنْ يَمِيْنِيْ وَعَنْ شِمَالِيْ، وَمِنْ فَوْقِيْ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ',
                    latin:
                        'Allahumma innii as-alukal \'afwa wal \'aafiyah fid dunyaa wal aakhiroh. Allahumma innii as-alukal \'afwa wal \'aafiyah fii diinii wa dun-yaya wa ahlii wa maalii. Allahumas-tur \'awrootii wa aamin row\'aatii. Allahummahfazh-nii mim bayni yadayya wa min kholfii wa \'an yamiinii wa \'an syimaalii wa min fawqii wa a\'udzu bi \'azhomatik an ughtala min tahtii',
                    arti:
                        'Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan di dunia juga di akhirat. Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan dalam agama, dunia, keluarga dan hartaku. Ya Allah, tutupilah auratku (aib dan sesuatu yang tidak layak dilihat orang) dan tenteramkanlah aku dari rasa takut. Ya Allah, peliharalah aku dari muka, belakang, kanan, kiri dan atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَاْلأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ',
                    latin:
                        'Allahumma \'aalimal ghoybi wasy syahaadah faathiros samaawaati wal ardh. Robba kulli syai-in wa maliikah. Asyhadu alla ilaha illa anta. A\'udzu bika min syarri nafsii wa min syarrisy syaythooni wa syirkihi, wa an aqtarifa \'alaa nafsii suu-an aw ajurrohu ilaa muslim',
                    arti:
                        'Ya Allah, Yang Maha Mengetahui yang ghaib dan yang nyata, wahai Rabb pencipta langit dan bumi, Rabb segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada ilah yang berhak disembah kecuali Engkau. Aku berlindung kepadaMu dari kejahatan diriku, setan dan balatentaranya (godaan untuk berbuat syirik pada Allah), dan aku (berlindung kepada-Mu) dari berbuat kejelekan terhadap diriku atau menyeretnya kepada seorang muslim',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        '(Baca 3x) بِسْمِ اللَّهِ الَّذِى لاَ يَضُرُّ مَعَ اسْمِهِ شَىْءٌ فِى الأَرْضِ وَلاَ فِى السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
                    latin:
                        'Bismillahilladzi laa yadhurru ma\'asmihi syai-un fil ardhi wa laa fis samaa\' wa huwas samii\'ul \'aliim',
                    arti:
                        'Dengan nama Allah yang bila disebut, segala sesuatu di bumi dan langit tidak akan berbahaya, Dia-lah Yang Maha Mendengar lagi Maha Mengetahui',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'يَا حَيُّ يَا قَيُّوْمُ بِرَحْمَتِكَ أَسْتَغِيْثُ، وَأَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ وَلاَ تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ أَبَدًا',
                    latin:
                        'Yaa Hayyu Yaa Qoyyum, bi-rohmatika as-taghiits, wa ash-lih lii sya\'nii kullahu wa laa takilnii ilaa nafsii thorfata \'ainin Abadan',
                    arti:
                        'Ya Rabb Yang Maha Hidup, Ya Rabb Yang Berdiri Sendiri (tidak membutuhkan hal lain), dengan rahmat-Mu aku meminta pertolongan, perbaikilah segala urusanku dan jangan diserahkan kepadaku sekalipun sekejap mata (tanpa mendapat pertolongan dari-Mu)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'أَصْبَحْنَا عَلَى فِطْرَةِ اْلإِسْلاَمِ وَعَلَى كَلِمَةِ اْلإِخْلاَصِ، وَعَلَى دِيْنِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيْمَ، حَنِيْفًا مُسْلِمًا وَمَا كَانَ مِنَ الْمُشْرِكِيْنَ',
                    latin:
                        'Ash-bahnaa \'ala fithrotil islaam wa \'alaa kalimatil ikhlaash, wa \'alaa diini nabiyyinaa Muhammadin shallallahu \'alaihi wa sallam, wa \'alaa millati abiina Ibraahiima haniifam muslimaaw wa maa kaana minal musyrikin',
                    arti:
                        'Pada saat waktu pagi kami memegang agama Islam, kalimat ikhlas (kalimat syahadat), agama Nabi kami Muhammad shallallahu \'alaihi wa sallam, dan agama bapak kami Ibrahim, yang berdiri pada jalan yang lurus, Muslim dan tidak termasuk kedalam orang-orang musyrik',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa: '(Baca 100x) سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ',
                    latin: 'Subhanallahi wabihamdih',
                    arti: 'Maha Suci Allah sembari memuji-Nya',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ',
                    latin:
                        'Laa ilaaha illallaahu wahdahu laa syariika lah, lahul mulku walahul hamdu wahuwa \'alaa kulli syai-in qadiir',
                    arti:
                        'Tiada Rabb yang berhak disembah selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan serta segala pujian. Dialah (satu-satunya) yang berkuasa atas segala sesuatu',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        '(Baca 3x) .سُبْحَانَ اللهِ وَبِحَمْدِهِ: عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ',
                    latin:
                        'Subhanallah wa bi-hamdih, \'adada kholqih wa ridhoo nafsih. wa zinata \'arsyih, wa midaada kalimaatih',
                    arti:
                        'Maha Suci Allah, aku memuji-Nya sebanyak makhluk-Nya, sejauh kerelaan-Nya, seberat timbangan \'Arsy-Nya dan sebanyak tinta kalimat-Nya',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa:
                        'اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلاً مُتَقَبَّلاً',
                    latin:
                        'Allahumma innii as-aluka \'ilman naafi\'a, wa rizqon thoyyibaa, wa \'amalan mutaqobbalaa',
                    arti:
                        'Ya Allah, sungguh aku memohon kepada-Mu ilmu yang bermanfaat, rezeki yang bersih serta amal yang diterima (di sisi-Mu dan mendapatkan ganjaran yang baik)." (HR Ibnu As-Sunni dan Ibnu Majah)',
                  ),
                  SizedBox(height: 15),
                  Doa(
                    doa: '(Baca 100x) أَسْتَغْفِرُ الله وَأَتُوْبُ إِلَيْهِ',
                    latin: 'Astaghfirullaaha waatuubu ilaiih',
                    arti:
                        'Aku memohon ampun kepada Allah dan bertaubat kepada-Nya',
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
