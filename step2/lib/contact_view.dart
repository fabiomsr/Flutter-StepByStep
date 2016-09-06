import 'package:flutter/material.dart';
import 'contact_data.dart';

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Contacts"),
        ),
        body: new ContactList(kContacts)
      );
  }

}


class ContactList extends StatelessWidget {

  final List<Contact> _contacts;

  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return new MaterialList(
          type: MaterialListType.twoLine,
          padding: new EdgeInsets.symmetric(vertical: 8.0),
          children: _buildContactList()
        );
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => new _ContactListItem(contact))
                    .toList();
  }

}



class _ContactListItem extends ListItem {

  _ContactListItem(Contact contact) :
    super(
      title : new Text(contact.fullName),
      subtitle: new Text(contact.email),
      leading: new CircleAvatar(
        child: new Text(contact.fullName[0])
      )
    );

}
