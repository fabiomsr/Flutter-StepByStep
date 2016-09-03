import 'package:flutter/material.dart';
import 'contact_data.dart';

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Contacts"),
        ),
        body: new ContactListWidget(kContacts)
      );
  }

}


class ContactListWidget extends StatelessWidget {

  final List<Contact> _contacts;

  ContactListWidget(this._contacts);

  @override
  Widget build(BuildContext context) {
    return new MaterialList(
          type: MaterialListType.twoLine,
          padding: new EdgeInsets.symmetric(vertical: 8.0),
          children: _buildContactList()
        );
  }

  List<_ContactWidget> _buildContactList(){
    return _contacts.map((contact) => new _ContactWidget(contact)).toList();
  }

}



class _ContactWidget extends StatelessWidget {
  final Contact _contact;

  _ContactWidget(this._contact);

  @override
  Widget build(BuildContext context) {
    return new ListItem(
      leading: new CircleAvatar(
        child: new Text(_contact.fullname[0])
    ),
      title: new Text(_contact.fullname),
      subtitle: new Text(_contact.email)
    );
  }

}
