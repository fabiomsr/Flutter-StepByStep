import 'package:flutter/material.dart';
import 'contact_view.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new ContactsPage()
    )
  );
}
