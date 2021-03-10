import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

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
            leadingWidth: 70,
            toolbarHeight: 70,
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
                      Icon(
                        FontAwesomeIcons.chevronDown,
                        color: Colors.white,
                        size: 80,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                height: 850.0,
                color: Colors.white,
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    children: [
                      Column(children: [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            'Serviços',
                            style: TextStyle(fontSize: 48, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 40),
                          height: 5,
                          width: 100,
                          color: Colors.amber[800],
                        ),
                      ]),
                      Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.only(right: 40, left: 40),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 150, right: 150),
                                      height: 326.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '../assets/services/yellow-hat/construction-plan-calculator-hard-hat-project-isto.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      height: 250,
                                      padding: EdgeInsets.all(0),
                                      margin: EdgeInsets.all(0),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              'Projetos, construções e reformas',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors
                                                      .lightBlue.shade900),
                                              textAlign: TextAlign.start,
                                            ),
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 20),
                                          ),
                                          Text(
                                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
                                        ],
                                      ),
                                      width: 240,
                                    )
                                  ],
                                ),
                                color: Colors.grey[50],
                              )),
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.only(right: 40, left: 40),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 150, right: 150),
                                      height: 326.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '../assets/services/structural/Steel_construction.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      height: 250,
                                      padding: EdgeInsets.all(0),
                                      margin: EdgeInsets.all(0),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              'Reforços estruturais',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors
                                                      .lightBlue.shade900),
                                              textAlign: TextAlign.start,
                                            ),
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 20),
                                          ),
                                          Text(
                                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
                                        ],
                                      ),
                                      width: 240,
                                    )
                                  ],
                                ),
                                color: Colors.grey[50],
                              )),
                              Expanded(
                                  child: Card(
                                margin: EdgeInsets.only(right: 40, left: 40),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 150, right: 150),
                                      height: 326.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '../assets/services/writting-papper/laudos-pericias.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      height: 250,
                                      padding: EdgeInsets.all(0),
                                      margin: EdgeInsets.all(0),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              'Laudos e perícias',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors
                                                      .lightBlue.shade900),
                                              textAlign: TextAlign.start,
                                            ),
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 20),
                                          ),
                                          Text(
                                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
                                        ],
                                      ),
                                      width: 240,
                                    )
                                  ],
                                ),
                                color: Colors.grey[50],
                              )),
                            ],
                          ))
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
                        'Sobre',
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
                        'Contato',
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
                        'Rodapé',
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
