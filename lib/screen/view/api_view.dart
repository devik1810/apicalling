import 'package:apicalling/utils/api_helper.dart';
import 'package:flutter/material.dart';

class ApiView extends StatefulWidget {
  const ApiView({Key? key}) : super(key: key);

  @override
  State<ApiView> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          centerTitle: true,
          title: Text("Api Data"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ApiHelper apiHelper = ApiHelper();
              apiHelper.postApiCall();
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade900),
            child: Text("Api data"),
          ),
        ),
      ),
    );
  }
}
