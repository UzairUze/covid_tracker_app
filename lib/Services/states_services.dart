import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:covid_tracker_app/Services/Utilities/app_url.dart';
import 'package:http/http.dart' as http;
import 'package:covid_tracker_app/Model/World_States_Model.dart';

class StatesServices {
  Future<WorldStatesModel> factworkStatesRecord() async {
    final response = await http.get(Uri.parse(AppUrl.wolrdStatesApi));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> CountriesListApi() async {
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    var data;
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
