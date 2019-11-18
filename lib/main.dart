//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(CommuteCheckerApp());

class CommuteCheckerApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return CommuteCheckerState();
  }

}

class CommuteCheckerState extends State<CommuteCheckerApp> {
  var _isLoading = true;


  @override
  Widget build(BuildContext context) {
    _makeGetRequest();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Check My Commute"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _setasd();
              });
            },)
          ],
        ),
        body: Center(
//            child: Text(fetchPost().toString()),
          child: _isLoading ? CircularProgressIndicator() : Text(ho),

        ),
      ),
    );
  }
  _setasd(){
    if (_isLoading){
      _isLoading = false;
      return;
    }
    _isLoading = true;
  }
  String ho = "a";
  http.Response response;
  Future<String> _makeGetRequest() async {
    // make GET request
    String url = 'http://192.168.0.28:8080/';
    http.Client();
    response = await http.get(url);
//    sleep(Duration(seconds: 2));
    // sample info available in response
    int statusCode = response.statusCode;
    print(statusCode);
//    Map<String, String> headers = response.headers;
//    String contentType = headers['content-type'];
    ho = response.body;
    print(ho);
    return response.body;


    // TODO convert json to object...
  }
}