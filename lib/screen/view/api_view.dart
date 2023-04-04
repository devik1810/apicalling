import 'package:apicalling/screen/provider/api_provider.dart';
import 'package:apicalling/utils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApiView extends StatefulWidget {
  const ApiView({Key? key}) : super(key: key);

  @override
  State<ApiView> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  ApiProvider? apiProviderT;
  ApiProvider? apiProviderF;

  @override
  Widget build(BuildContext context) {
    apiProviderT = Provider.of<ApiProvider>(context, listen: true);
    apiProviderF = Provider.of<ApiProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          centerTitle: true,
          title: Text("Api Data"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  apiProviderF!.postApiCall();
                  // ApiHelper apiHelper = ApiHelper();
                  // apiHelper.postApiCall();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade900),
                child: Text("Api data"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: apiProviderT!.apiList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${apiProviderT!.apiList[index].id}"),
                    title: Text("${apiProviderT!.apiList[index].title}"),
                    subtitle: Text(
                      "${apiProviderT!.apiList[index].body}",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Text(
                      "${apiProviderT!.apiList[index].userId}",
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
