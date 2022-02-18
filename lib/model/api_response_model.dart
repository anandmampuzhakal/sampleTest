import 'package:flutter/foundation.dart';

class APIResponseModel {
  final int updated;
  final int cases;
  final int todayCases;
  final  int deaths;
  final int todayDeaths;
  final int recovered;
  final int active;
  final int critical;
  final int casesPerOneMillion;
  final int deathsPerOneMillion;
  final int tests;
  final int affectedCountries;

  APIResponseModel({
    required this.updated,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.affectedCountries,
  });

  factory APIResponseModel.fromJson(Map<String, dynamic> json) {
    return APIResponseModel(
      updated: json['updated'] as int,
      cases: json['cases'] as int,
      todayCases: json['todayCases'] as int,
      deaths: json['deaths'] as int,
      todayDeaths: json['todayDeaths'] as int,
      recovered: json['recovered'] as int,
      active: json['active'] as int,
      critical: json['critical'] as int,
      casesPerOneMillion: json['casesPerOneMillion'] as int,
      deathsPerOneMillion: json['deathsPerOneMillion'] as int,
      tests: json['tests'] as int,
      affectedCountries: json['affectedCountries'] as int,


    );
  }
}