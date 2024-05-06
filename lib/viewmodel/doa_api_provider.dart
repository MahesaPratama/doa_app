// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:aplikasi_kumpulan_doa/model/doa_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DoaApiProvider with ChangeNotifier {
  Future<List<DoaModel>> getDoa() async {
    try {
      var response = await http
          .get(Uri.parse('https://doa-doa-api-ahmadramadhan.fly.dev/api'));
      if (response.statusCode == 200) {
        List<DoaModel> listDoa = [];
        List parsedJson = jsonDecode(response.body);
        // ignore: avoid_function_literals_in_foreach_calls
        parsedJson.forEach((doa) {
          listDoa.add(DoaModel.fromJson(doa));
        });
        return listDoa;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<DoaModel>> searchDoa(String query) async {
    try {
      var response = await http
          .get(Uri.parse('https://doa-doa-api-ahmadramadhan.fly.dev/api'));
      if (response.statusCode == 200) {
        List<DoaModel> listDoa = [];
        List parsedJson = jsonDecode(response.body);
        // Filtering based on query
        listDoa = parsedJson
            .map((doa) => DoaModel.fromJson(doa))
            .where(
                (doa) => doa.doa!.toLowerCase().contains(query.toLowerCase()))
            .toList();
        return listDoa;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
