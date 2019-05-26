import 'package:flutter/material.dart';
import 'package:step5/routes/Routes.dart';
import 'module/contacts/contact_list_view.dart';
import 'injection/dependency_injection.dart';
import 'module/events/event_list_view.dart';
import 'module/notes/note_list_view.dart';

void main() {
  Injector.configure(Flavor.PRO);

  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: ContactsPage(),
      routes:  {
        Routes.contacts: (context) => ContactsPage(),
        Routes.events: (context) => EventsPage(),
        Routes.notes: (context) => NotesPage(),
      },
    )
  );
}
