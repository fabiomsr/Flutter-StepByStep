import 'package:flutter/material.dart';
import 'package:step5/widget/navigation_drawer.dart';


class NotesPage extends StatelessWidget {

  static const String routeName = '/notes';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Notes"),
            ),
        drawer: new NavigationDrawer(),
        body: new Center(
            child: new Text("Notes")
        )
    );
  }

}