import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar_mobile.dart';
import 'navbar_tablet_desktop.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ScreenTypeLayout(
          mobile: NavBarMobile(),
          tablet: NavBarTabletDesktop(),
        )
      ],
    );
  }
}
