import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: StatelessWidgetExample("Hello, World!")
    )
  );
}

class StatelessWidgetExample extends StatelessWidget {
  final String _appBarTitle;

  StatelessWidgetExample(this._appBarTitle) : super() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle)
      ),
      body: Center(
        child: Text('Demo')
      )
    );
  }
}