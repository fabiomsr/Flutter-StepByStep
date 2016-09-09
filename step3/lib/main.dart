import 'package:flutter/material.dart';
import 'module/contacts/contact_view.dart';
import 'injection/dependency_injection.dart';

void main() {
  Injector.configure(Flavor.PRO);

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
