import 'package:flutter/material.dart';

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
          child: _isLoading ? CircularProgressIndicator() : Text("Finished Loading....."),
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

}