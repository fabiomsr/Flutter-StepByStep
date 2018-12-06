import 'package:flutter/material.dart';
import 'contact_data.dart';

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        body: ContactList(kContacts)
      );
  }

}

class ContactList extends StatelessWidget {

  final List<Contact> _contacts;

  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          children: _buildContactList()
        );
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => _ContactListItem(contact))
                    .toList();
  }

}

class _ContactListItem extends ListTile {

  _ContactListItem(Contact contact) :
    super(
      title : Text(contact.fullName),
      subtitle: Text(contact.email),
      leading: CircleAvatar(
        child: Text(contact.fullName[0])
      )
    );

}
