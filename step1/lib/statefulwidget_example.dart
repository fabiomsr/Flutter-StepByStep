import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: StatefulWidgetExample("Hello, World!")
    )
  );
}


class StatefulWidgetExample extends StatefulWidget {
  final String _appBarTitle;

  StatefulWidgetExample(this._appBarTitle, { Key key }) : super(key: key);

  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState(_appBarTitle);
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
    return Scaffold(
      appBar: AppBar(
        title: Text(this._appBarTitle)
      ),
      body: Center(
        child: Text('Button tapped $_counter time${ _counter == 1 ? '' : 's' }.')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add)
      )
    );
  }
}
