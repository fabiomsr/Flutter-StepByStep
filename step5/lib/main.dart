import 'package:flutter/material.dart';
import 'module/contacts/contact_list_view.dart';
import 'injection/dependency_injection.dart';
import 'package:step5/module/events/event_list_view.dart';
import 'package:step5/module/notes/note_list_view.dart';

void main() {
  Injector.configure(Flavor.PRO);

  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
          ContactsPage.routeName: (BuildContext context) => new ContactsPage(),
          EventsPage.routeName: (BuildContext context) => new EventsPage(),
          NotesPage.routeName: (BuildContext context) => new NotesPage()
      }
    )
  );
}
