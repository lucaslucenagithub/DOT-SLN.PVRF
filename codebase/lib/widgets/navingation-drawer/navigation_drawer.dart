import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key, @required this.scrollToIndex})
      : super(key: key);

  final Function scrollToIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async => scrollToIndex(0),
                child: DrawerItem('Home', Icons.home),
              )),
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async => scrollToIndex(1),
                child: DrawerItem('Serviços', Icons.home_repair_service),
              )),
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async => scrollToIndex(2),
                child: DrawerItem('Sobre', Icons.info),
              )),
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async => scrollToIndex(3),
                child: DrawerItem('Contato', Icons.phone_android),
              )),
        ],
      ),
    );
  }
}
