import 'dart:convert';
import 'dart:math';

import 'package:apicalling/screen/model/api_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

class ApiProvider extends ChangeNotifier {
  List<dynamic> apiList = [];

  Future<void> postApiCall() async {
    String apilink = "https://jsonplaceholder.typicode.com/posts";

    Uri uri = Uri.parse(apilink);
    var resonse = await http.get(uri);
    var json = jsonDecode(resonse.body);

    List<dynamic>apiModelList=json.map((e)=> ApiModel().fromJson(e)).toList();
    apiList = apiModelList;
    notifyListeners();
  }
}
