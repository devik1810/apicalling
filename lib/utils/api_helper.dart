import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  Future<void> postApiCall() async {
    String apilink = "https://jsonplaceholder.typicode.com/posts";

    Uri uri = Uri.parse(apilink);
    var resonse = await http.get(uri);
    var json = jsonDecode(resonse.body);
    print(resonse.body);

  }
}
