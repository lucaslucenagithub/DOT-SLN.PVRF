import 'package:codebase/views/about.dart';
import 'package:codebase/views/contact.dart';
import 'package:codebase/views/footer.dart';
import 'package:codebase/views/home.dart';
import 'package:codebase/views/services.dart';
import 'package:codebase/widgets/navbar/navBar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'licences.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // NavBar(),
          SliverAppBar(
            leadingWidth: 70,
            toolbarHeight: 70,
            pinned: true,
            floating: true,
            snap: true,
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
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Home(),
            Services(),
            About(),
            Contact(),
            Footer(),
          ])),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Whatsapp',
        child: Icon(FontAwesomeIcons.whatsapp),
        backgroundColor: Colors.green,
      ),
    );
  }
}
