import 'package:flutter/material.dart';

class DialogLoading extends StatelessWidget {

  String _message = "Por favor espere..";

  DialogLoading();

  DialogLoading.CustomMessage(String message) {
    _message = message;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: new Row(
        children: <Widget>[
          new CircularProgressIndicator(),
          new Spacer(flex: 2),
          new Text(_message),
        ],
      ),
    );
  }
}
