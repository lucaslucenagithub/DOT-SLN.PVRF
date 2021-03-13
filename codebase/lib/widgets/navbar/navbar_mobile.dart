import 'package:flutter/material.dart';

class NavBarMobile extends StatefulWidget {
  NavBarMobile({Key key}) : super(key: key);

  @override
  _NavBarMobileState createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        leadingWidth: 70,
        toolbarHeight: 70,
        backgroundColor: Colors.amber[800],
        leading: Image(
          image: AssetImage('../assets/logo/logoPVRF.png'),
        ),
        actions: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              )),
        ],
      )
    ]);
  }
}
