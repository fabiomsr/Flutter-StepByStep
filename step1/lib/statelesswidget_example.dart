import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new StatelessWidgetExample("Hello, World")
    )
  );
}

class StatelessWidgetExample extends StatelessWidget {
  final String _appBarTitle;

  StatelessWidgetExample(this._appBarTitle) : super() ;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appBarTitle)
      ),
      body: new Center(
        child: new Text('Demo')
      )
    );
  }
}
