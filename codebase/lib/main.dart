import 'package:codebase/views/about.dart';
import 'package:codebase/views/contact.dart';
import 'package:codebase/views/footer.dart';
import 'package:codebase/views/home.dart';
import 'package:codebase/views/services.dart';
import 'package:codebase/widgets/navbar/navbar_mobile.dart';
import 'package:codebase/widgets/navbar/navbar_tablet_desktop.dart';
import 'package:codebase/widgets/navingation-drawer/navigation_drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'licences.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  addAllLicences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PVRF',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;
  bool isExpaned = true;
  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int index, Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
      highlightColor: Colors.black.withOpacity(0.1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MediaQuery.of(context).size.width <= 852
          ? NavigationDrawer(
              scrollToIndex: (index) => this._scrollToIndex(index))
          : null,
      body: CustomScrollView(
        controller: _autoScrollController,
        slivers: [
          MediaQuery.of(context).size.width >= 700
              ? NavBarTabletDesktop(
                  scrollToIndex: (index) => this._scrollToIndex(index))
              : NavBarMobile(),
          SliverList(
              delegate: SliverChildListDelegate([
            _wrapScrollTag(
              index: 0,
              child: Home(),
            ),
            _wrapScrollTag(
              index: 1,
              child: Services(),
            ),
            _wrapScrollTag(
              index: 2,
              child: About(),
            ),
            _wrapScrollTag(
              index: 3,
              child: Contact(),
            ),
            _wrapScrollTag(
              index: 4,
              child:
                  Footer(scrollToIndex: (index) => this._scrollToIndex(index)),
            ),
          ])),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await launch('https://wa.me/11957296991');
        },
        tooltip: 'Whatsapp',
        child: Icon(FontAwesomeIcons.whatsapp),
        backgroundColor: Colors.green,
      ),
    );
  }
}
