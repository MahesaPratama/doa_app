import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:aplikasi_kumpulan_doa/viewmodel/doa_api_provider.dart';
import 'package:aplikasi_kumpulan_doa/model/doa_model.dart';
import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/viewmodel/theme_provider.dart';
import 'package:aplikasi_kumpulan_doa/widget/main_list.dart';
import 'package:aplikasi_kumpulan_doa/widget/quotes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DoaPage extends StatefulWidget {
  const DoaPage({Key? key}) : super(key: key);

  @override
  State<DoaPage> createState() => _DoaPageState();
}

class _DoaPageState extends State<DoaPage> {
  TextEditingController search = TextEditingController();
  String query = '';
  bool positive = false;
  @override
  Widget build(BuildContext context) {
    var doaProvider = Provider.of<DoaApiProvider>(context);
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 10.h,
            backgroundColor: Colors.transparent,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 0.8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: TextFormField(
                      controller: search,
                      onChanged: (value) {
                        setState(() {
                          query = value;
                        });
                      },
                      style: blackTextStyle,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Cari Doa',
                          hintStyle: GoogleFonts.poppins().copyWith(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15.sp,
                          ),
                          fillColor: earlyDawn,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.black.withOpacity(0.3),
                          )),
                    ),
                  ),
                  AnimatedToggleSwitch<bool>.dual(
                    current: themeProvider.isLight ? positive : true,
                    first: false,
                    second: true,
                    spacing: 0.55.h,
                    height: 9.5.h,
                    animationCurve: Curves.easeInOutCubic,
                    style: const ToggleStyle(
                      borderColor: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1.5),
                        ),
                      ],
                    ),
                    indicatorSize: Size.fromWidth(10.w),
                    borderWidth: 3,
                    onChanged: (b) {
                      setState(() {
                        positive = b;
                        themeProvider.isLight = !themeProvider.isLight;
                      });
                    },
                    styleBuilder: (b) => ToggleStyle(
                      indicatorColor: b ? earlyDawn : pumpkinOrange,
                      backgroundColor: b ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      borderColor: b ? earlyDawn : pumpkinOrange,
                    ),
                    iconBuilder: (value) => value
                        ? Icon(
                            FontAwesomeIcons.cloudMoon,
                            color: Colors.black,
                            size: 2.h,
                          )
                        : Icon(
                            FontAwesomeIcons.cloudSun,
                            color: earlyDawn,
                            size: 2.h,
                          ),
                    textBuilder: (value) => value
                        ? Center(
                            child: Text(
                            'Dark',
                            style: whiteTextStyle.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ))
                        : Center(
                            child: Text(
                            'Light',
                            style: blackTextStyle.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: themeProvider.isLight ? toryBlue : Colors.black,
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 0.5.h),
            decoration: BoxDecoration(
              border: Border.all(
                color: earlyDawn,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SingleChildScrollView(
              child: FutureBuilder<List<DoaModel>>(
                future: doaProvider.searchDoa(query),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: [
                        const Quotes(),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: snapshot.data!
                              .map((doa) => MainList(
                                    title: doa.doa.toString(),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            elevation: 15,
                                            backgroundColor:
                                                const Color(0xffffe9aa),
                                            shadowColor: Colors.black,
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.h),
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.h),
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration:
                                                      const BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors
                                                                      .black))),
                                                  child: Text(
                                                    doa.ayat.toString(),
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            fontSize: 18.sp),
                                                    textAlign: TextAlign.right,
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.h),
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.h),
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration:
                                                      const BoxDecoration(
                                                          border: Border(
                                                              bottom: BorderSide(
                                                                  color: Colors
                                                                      .black))),
                                                  child: Text(
                                                    doa.latin.toString(),
                                                    style: blackTextStyle
                                                        .copyWith(),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Text(
                                                  doa.artinya.toString(),
                                                  style:
                                                      blackTextStyle.copyWith(),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ))
                              .toList(),
                        ),
                      ],
                    );
                  }
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(3.h),
                      child: CircularProgressIndicator(
                        color: earlyDawn,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
