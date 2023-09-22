import 'dart:convert';

import 'package:cred_assignment/models/section.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Text getGrayedOutText(String text) {
  return Text(
      text,
      style: TextStyle(
        color: Colors.white24,
        fontSize: 18,
        fontWeight: FontWeight.w600
      )
  );
}

Future<List<Section>> fetchCategories() async {
  http.Response res = await http.get(Uri.parse('https://api.mocklets.com/p68785/skuSections'));
  print(res.statusCode);

  List<dynamic> data = jsonDecode(res.body)['data'];
  List<Section> categories = [];

  if (res.statusCode == 200) {
    for (var d in data) {
      categories.add(Section.fromJson(d));
    }
  }

  return categories;
}