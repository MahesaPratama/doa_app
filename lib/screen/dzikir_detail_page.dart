import 'package:aplikasi_kumpulan_doa/model/dzikir_shalat_api_model.dart';
import 'package:aplikasi_kumpulan_doa/theme/style.dart';
import 'package:aplikasi_kumpulan_doa/viewmodel/theme_provider.dart';
import 'package:aplikasi_kumpulan_doa/widget/content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DzikirDetailPage extends StatefulWidget {
  final String sumber;
  const DzikirDetailPage({super.key, required this.sumber});

  @override
  State<DzikirDetailPage> createState() => _DzikirDetailPageState();
}

class _DzikirDetailPageState extends State<DzikirDetailPage> {
  int angka = 0;
  late Future<List<DzikirShalatModel>> _fetchDzikirListFuture;

  Future<List<DzikirShalatModel>> fetchDzikirList() async {
    final response = await http
        .get(Uri.parse('https://api.dikiotang.com/dzikir/${widget.sumber}'));
    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body)['data'];
      List<DzikirShalatModel> doaList =
          responseData.map((data) => DzikirShalatModel.fromJson(data)).toList();
      return doaList;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchDzikirListFuture = fetchDzikirList();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return Scaffold(
            backgroundColor: themeProvider.isLight ? toryBlue : Colors.black,
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: themeProvider.isLight ? toryBlue : Colors.black,
            ),
            body: FutureBuilder<List<DzikirShalatModel>>(
              future: _fetchDzikirListFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'An error occurred: ${snapshot.error}',
                      style: whiteTextStyle,
                    ),
                  );
                } else if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return Center(
                      child: Text(
                        'No data available',
                        style: whiteTextStyle,
                      ),
                    );
                  } else {
                    return DoaListView(doaList: snapshot.data!);
                  }
                } else {
                  return const SizedBox(); // Handle other states
                }
              },
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: themeProvider.isLight ? Colors.black : earlyDawn,
              onPressed: null,
              child: Text(
                "$angka",
                style: whiteTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: themeProvider.isLight ? earlyDawn : Colors.black,
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              color: themeProvider.isLight ? toryBlue : Colors.black,
              height: 8.5.h,
              shape: const CircularNotchedRectangle(),
              notchMargin: 3,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        if (angka > 0) {
                          setState(() {
                            angka--;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.white,
                        size: 5.h,
                      )),
                  IconButton(
                      onPressed: () {
                        if (angka < 33) {
                          setState(() {
                            angka++;
                          });
                        } else {
                          setState(() {
                            angka = 0;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                        size: 5.h,
                      )),
                ],
              ),
            ));
      },
    );
  }
}

class DoaListView extends StatelessWidget {
  final List<DzikirShalatModel> doaList;

  const DoaListView({Key? key, required this.doaList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: doaList.length,
      itemBuilder: (context, index) {
        final doa = doaList[index];
        return Content(
          doa: doa.arab,
          latin: doa.indo,
        );
      },
    );
  }
}
