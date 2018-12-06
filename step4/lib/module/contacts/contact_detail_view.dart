import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import '../../data/contact_data.dart';
import '../../widget/app_bar.dart';

class ContactPage extends StatelessWidget {

  static const String routeName = '/contact';

  final Contact _contact;

  ContactPage(this._contact);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Theme(
      data: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: _contact.gender == 'male' ? Colors.teal : Colors.pink
      ),
      child: new Scaffold(
        body: CustomScrollView( 
          slivers: [ 
            FlexibleAppBar(_contact.fullName, _contact.imageUrl),
            SliverList(
              delegate: SliverChildListDelegate(
                <_ContactCategory>[
                  _buildPhoneCategory(),
                  _buildCategory(Icons.location_on, Icons.map,
                                <String>[_contact.location.street, _contact.location.city]),
                  _buildCategory(Icons.contact_mail, Icons.email, <String>[_contact.email]),
                  _buildCategory(Icons.today, Icons.add_alert,
                    <String>["Birthday ${_contact.birthday}"]),
                ]
              )
            )
          ]
        )
      )
    );
  }

  _ContactCategory _buildPhoneCategory() {
    var phoneItems = _contact.phones.map((phone) =>
                        new _ContactCategoryItem(
                          icon: Icons.message,
                          lines: <String>[phone.number, phone.type]
                        )).toList();

    return new _ContactCategory(
      icon: Icons.call,
      children:phoneItems
    );
  }


  _ContactCategory _buildCategory(IconData categoryIcon, IconData categoryItemIcon,
                                  List<String> lines) {
    return new _ContactCategory(
      icon: categoryIcon,
      children: <_ContactCategoryItem>[
        new _ContactCategoryItem(
          icon: categoryItemIcon,
          lines:  lines
        )
      ]
    );
  }

}


///
/// CONTACT CATEGORY
///

class _ContactCategory extends StatelessWidget {

  final IconData icon;
  final List<_ContactCategoryItem> children;

  _ContactCategory({Key key, this.icon, this.children}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return new Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: new BoxDecoration(
        border: new Border(bottom: new BorderSide(color: themeData.dividerColor))
      ),
      child: new Row (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          new Container(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            width: 72.0,
            child: new Icon(icon, color: themeData.primaryColor)
          ),
          new Flexible(child: new Column(children: children))
        ]
      )
    );
  }
}


///
/// CONTACT CATEGORY ITEM
///


class _ContactCategoryItem extends StatelessWidget {

  final IconData icon;
  final List<String> lines;

  _ContactCategoryItem({ Key key,  @required this.icon, @required this.lines })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _buildRow(context)
      )
    );
  }

  List<Widget> _buildRow(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<Widget> firstColumn = lines.map((line) => new Text(line)).toList();

    return <Widget> [
      new Flexible(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: firstColumn
        )
      ),
      new SizedBox(
        width: 72.0,
        child: new IconButton(
          icon: new Icon(icon),
          color: themeData.primaryColor,
          onPressed: () => {}
        )
      )
    ];
  }

}
