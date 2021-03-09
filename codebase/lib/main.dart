import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PVRF',
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'Roboto'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // leadingWidth: 150,
            // toolbarHeight: 150,
            pinned: true,
            snap: false,
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
          ),
          SliverList(
            delegate: SliverChildListDelegate(([
              Container(
                padding: EdgeInsets.only(left: 150, right: 150),
                height: 800.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            '../assets/home-bg/beautiful-view-construction-site-city-during-sunset.png'),
                        fit: BoxFit.cover)),
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ADIPISCING ELIT',
                        style: TextStyle(
                          fontSize: 67,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 800.0,
                color: Colors.white,
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Serviços',
                        style: TextStyle(fontSize: 48, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 800.0,
                color: Colors.grey[50],
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Serviços',
                        style: TextStyle(fontSize: 48, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 800.0,
                color: Colors.white,
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sobre',
                        style: TextStyle(fontSize: 48, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200.0,
                color: Colors.grey[50],
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Contatos',
                        style: TextStyle(fontSize: 48, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ])),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Whatsapp',
        child: Icon(FontAwesomeIcons.whatsapp),
        backgroundColor: Colors.green,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
