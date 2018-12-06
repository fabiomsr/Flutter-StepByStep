import 'package:flutter/material.dart';
import '../../data/contact_data.dart';
import 'contact_presenter.dart';

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        body: ContactList()
      );
  }

}


///
///   Contact List
///

class ContactList extends StatefulWidget{
  ContactList({ Key key }) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}


class _ContactListState extends State<ContactList> implements ContactListViewContract {

  ContactListPresenter _presenter;

  List<Contact> _contacts;

  bool _isSearching;

  _ContactListState() {
    _presenter =  ContactListPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    _isSearching = true;
    _presenter.loadContacts();
  }


  @override
  void onLoadContactsComplete(List<Contact> items) {

    setState(() {
      _contacts = items;
      _isSearching = false;
    });

  }

  @override
  void onLoadContactsError() {
    // TODO: implement onLoadContactsError
  }

  @override
  Widget build(BuildContext context) {

    var widget;

    if(_isSearching) {
      widget = Center(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: CircularProgressIndicator()
        )
      );
    }else {
      widget = ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: _buildContactList()
          );
    }

    return widget;
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => _ContactListItem(contact))
                    .toList();
  }

}


///
///   Contact List Item
///

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
