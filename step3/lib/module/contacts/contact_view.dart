import 'package:flutter/material.dart';
import '../../data/contact_data.dart';
import 'contact_presenter.dart';

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
          child: new LinearProgressIndicator()
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
    return _contacts.map((contact) => new _ContactListItem(contact))
                    .toList();
  }

}


///
///   Contact List Item
///

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
