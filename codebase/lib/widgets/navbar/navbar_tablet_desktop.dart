import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarTabletDesktop extends StatefulWidget {
  NavBarTabletDesktop({Key key, @required this.scrollToIndex})
      : super(key: key);

  final Function scrollToIndex;

  @override
  _NavBarTabletDesktopState createState() => _NavBarTabletDesktopState();
}

class _NavBarTabletDesktopState extends State<NavBarTabletDesktop> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      leadingWidth: 100,
      toolbarHeight: 100,
      backgroundColor: Colors.amber[800],
      leading: Image(
        image: AssetImage('../../../assets/logo/logoPVRF.png'),
      ),
      actions: <Widget>[
        SizedBox(
          width: 600,
          child: DefaultTabController(
              length: 4,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                onTap: (index) async => widget.scrollToIndex(index),
                tabs: [
                  Container(
                    alignment: Alignment.center,
                    child: Text('HOME'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('SERVIÇOS'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('SOBRE'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('CONTATO'),
                  )
                ],
              )),
        )
      ],
    );
  }
}
