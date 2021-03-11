import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 70,
      toolbarHeight: 70,
      pinned: true,
      snap: true,
      floating: true,
      expandedHeight: 0.0,
      flexibleSpace: FlexibleSpaceBar(),
      backgroundColor: Colors.amber[800],
      leading: Image(
        image: AssetImage('../assets/logo/logoPVRF.png'),
      ),
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 0, right: 50),
          child: Text('HOME'),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 0, right: 50),
          child: Text('SERVIÇOS'),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 0, right: 50),
          child: Text('SOBRE'),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 0, right: 50),
          child: Text('CONTATO'),
        ),
      ],
    );
  }
}
