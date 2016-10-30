import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:step5/module/contacts/contact_list_view.dart';
import 'package:step5/module/events/event_list_view.dart';
import 'package:step5/module/notes/note_list_view.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget contactsItem = new DrawerItem(
        icon: new Icon(Icons.contacts),
        onPressed: () => Navigator.popAndPushNamed(context, ContactsPage.routeName),
        child: new Text('Contacts'));

    final Widget eventsItem = new DrawerItem(
        icon: new Icon(Icons.event),
        onPressed: () => Navigator.popAndPushNamed(context, EventsPage.routeName),
        child: new Text('Events'));

    final Widget notesItem = new DrawerItem(
        icon: new Icon(Icons.note),
        onPressed: () => Navigator.popAndPushNamed(context, NotesPage.routeName),
        child: new Text('Notes'));

    final Widget stepsItem = new DrawerItem(
        icon: new Icon(Icons.collections_bookmark),
        onPressed: () {},
        child: new Text('Steps'));

    final Widget authorsItem = new DrawerItem(
        icon: new Icon(Icons.face),
        onPressed: () {},
        child: new Text('Authors'));

    final Widget flutterAuthorsItem = new DrawerItem(
        icon: new Icon(Icons.account_box),
        onPressed: () {},
        child: new Text('Flutter Authors'));

    final Widget usefulLinksItem = new DrawerItem(
        icon: new Icon(Icons.stars),
        onPressed: () {},
        child: new Text('Useful Links'));

    final Widget reportIssueItem = new DrawerItem(
        icon: new Icon(Icons.bug_report),
        onPressed: () =>
            UrlLauncher.launch('https://github.com/fabiomsr/Flutter-StepByStep/issues/new'),
        child: new Text('Report an issue'));

    final Widget appVersionItem =
        new DrawerItem(onPressed: () {}, child: new Text('Version 0.0.5'));

    return new Drawer(
        child: new Block(children: <Widget>[
      _createHeader(),
      contactsItem,
      eventsItem,
      notesItem,
      new Divider(),
      stepsItem,
      authorsItem,
      flutterAuthorsItem,
      usefulLinksItem,
      new Divider(),
      reportIssueItem,
      appVersionItem
    ]));
  }

  Widget _createHeader() {
    return new DrawerHeader(
        padding: const EdgeInsets.only(top: 0.0),
        decoration: new BoxDecoration(backgroundColor: Colors.black),
        child: new Stack(children: <Widget>[
          new Image.asset('assets/drawer_header_background.png', fit: ImageFit.fill),
          new DecoratedBox(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      begin: const FractionalOffset(0.0, 0.6),
                      end: const FractionalOffset(0.0, 1.0),
                      colors: <Color>[
                const Color(0x00000000),
                const Color(0x70000000)
              ]))),
          new Positioned(
              bottom: 12.0,
              left: 16.0,
              child: new Text("Flutter Step-by-Step",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300))),
          new GestureDetector(
              onTap: () =>
                  UrlLauncher.launch('https://github.com/fabiomsr/Flutter-StepByStep')
          )
        ]));
  }

}
