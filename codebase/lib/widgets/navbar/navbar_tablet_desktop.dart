import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarTabletDesktop extends StatefulWidget {
  NavBarTabletDesktop({Key key}) : super(key: key);

  @override
  _NavBarTabletDesktopState createState() => _NavBarTabletDesktopState();
}

class _NavBarTabletDesktopState extends State<NavBarTabletDesktop> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 70,
      toolbarHeight: 70,
      backgroundColor: Colors.amber[800],
      leading: Image(
        image: AssetImage('../../../assets/logo/logoPVRF.png'),
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
