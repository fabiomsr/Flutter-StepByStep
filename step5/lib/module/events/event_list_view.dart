import 'package:flutter/material.dart';
import 'package:step5/widget/navigation_drawer.dart';


class EventsPage extends StatelessWidget {

  static const String routeName = '/events';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Events"),
            ),
        drawer: new NavigationDrawer(),
        body: new Center(
            child: new Text("Events")
        )
    );
  }

}