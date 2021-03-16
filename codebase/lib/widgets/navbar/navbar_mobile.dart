import 'package:flutter/material.dart';

class NavBarMobile extends StatefulWidget {
  NavBarMobile({Key key}) : super(key: key);

  @override
  _NavBarMobileState createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      leadingWidth: 80,
      backgroundColor: Colors.amber[800],
      toolbarHeight: 80,
      leading: Image(
        image: AssetImage('../../../assets/logo/logoPVRF.png'),
      ),
      actions: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openEndDrawer())),
      ],
    );
  }
}
