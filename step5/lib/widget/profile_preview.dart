import 'package:flutter/material.dart';

class ProfilePreview extends StatefulWidget {
  ProfilePreview({ Key key }) : super(key: key);

  @override
  _ProfilePreviewState createState() => new _ProfilePreviewState();
}


class _ProfilePreviewState extends State<ProfilePreview>{

  @override
  Widget build(BuildContext context) {
    return new UserAvatar();
    // return new Stack(
    //   children: <Widget>[
    //     new UserAvatar(),
    //     new Positioned(
    //         right: 2.0,
    //         bottom: 2.0,
    //         child: new Icon(Icons.business_center)
    //     )
    //   ]
    // );
  }
}


class UserAvatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 10.0,
      height: 10.0,
      child: new ClipOval(
        child: new Image.network( 'https://randomuser.me/api/portraits/lego/1.jpg' )
      )
    );
  }

}
