import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/contact_data.dart';
import 'contact_list_presenter.dart';
import 'contact_detail_view.dart';


class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Contacts"),
        ),
        body: new ContactList()
      );
  }

}


///
///   Contact List
///

class ContactList extends StatefulWidget{
  ContactList({ Key key }) : super(key: key);

  @override
  _ContactListState createState() => new _ContactListState();
}


class _ContactListState extends State<ContactList> implements ContactListViewContract {

  ContactListPresenter _presenter;

  List<Contact> _contacts;

  bool _IsSearching;

  _ContactListState() {
    _presenter = new ContactListPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = true;
    _presenter.loadContacts();
  }


  @override
  void onLoadContactsComplete(List<Contact> items) {

    setState(() {
      _contacts = items;
      _IsSearching = false;
    });

  }

  @override
  void onLoadContactsError() {
    // TODO: implement onLoadContactsError
  }

  @override
  Widget build(BuildContext context) {

    var widget;

    if(_IsSearching) {
      widget = new Center(
        child: new Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: new CircularProgressIndicator()
        )
      );
    }else {
      widget = new MaterialList(
            type: MaterialListType.twoLine,
            padding: new EdgeInsets.symmetric(vertical: 8.0),
            children: _buildContactList()
          );
    }

    return widget;
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) =>
                          new _ContactListItem(
                            contact: contact,
                            onTap: () { showContactPage(context, contact); }
                          ))
                    .toList();
  }

  void showContactPage(BuildContext context, Contact contact) {
    Navigator.push(context, new MaterialPageRoute<Null>(
      settings: const RouteSettings(name: ContactPage.routeName),
      builder: (BuildContext context) => new ContactPage(contact)
    ));
  }

}


///
///   Contact List Item
///

class _ContactListItem extends ListItem {

  _ContactListItem({ @required Contact contact,
                     @required GestureTapCallback onTap}) :
    super(
      title : new Text(contact.fullName),
      subtitle: new Text(contact.email),
      leading: new CircleAvatar(
        child: new Text(contact.fullName[0])
      ),
      onTap: onTap
    );

}
