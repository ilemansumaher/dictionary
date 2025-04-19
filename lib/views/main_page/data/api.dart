

import 'dart:convert';

import 'package:dictionary_pro/views/main_page/model/data_model.dart';
import 'package:flutter/services.dart';

Future<DataModel> readJson()async{
  final String response=await rootBundle.loadString("assets/language/data.json");
  final data=await json.decode(response);

  print(data);
  return data;
}