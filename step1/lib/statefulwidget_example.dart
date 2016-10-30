import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new StatefulWidgetExample("Hello, World!")
    )
  );
}


class StatefulWidgetExample extends StatefulWidget {
  final String _appBarTitle;

  StatefulWidgetExample(this._appBarTitle, { Key key }) : super(key: key);

  @override
  _StatefulWidgetExampleState createState() => new _StatefulWidgetExampleState(_appBarTitle);
}


class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  final String _appBarTitle;

  int _counter = 0;

  _StatefulWidgetExampleState(this._appBarTitle);

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this._appBarTitle)
      ),
      body: new Center(
        child: new Text('Button tapped $_counter time${ _counter == 1 ? '' : 's' }.')
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add)
      )
    );
  }
}
