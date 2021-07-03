import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/24PULL.dart';

// ignore: camel_case_types
class pull_providers{
  final _url = 'https://24pullrequests.com/users.json?';
  final _http = Dio();


  Future<List<Pull>> obtenerPULL()async{
  final response =  await _http.get(_url);
  List<dynamic> data = response.data;
  return data
  .map((pull) => Pull.fromMapJson(pull)).toList();
  }
}