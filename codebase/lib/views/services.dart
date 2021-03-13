import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      Axis orientation = sizingInformation.screenSize <= Size(1048, 1009)
          ? Axis.vertical
          : Axis.horizontal;

      double paddingLeftRight =
          sizingInformation.screenSize <= Size(1048, 9999) &&
                  sizingInformation.screenSize >= Size(630, 0)
              ? 150
              : sizingInformation.screenSize <= Size(630, 9999)
                  ? 50
                  : 0;

      return Expanded(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
                left: paddingLeftRight, right: paddingLeftRight, bottom: 100),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 5, bottom: 40),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'Serviços',
                          style: TextStyle(
                              fontSize: 48, color: Colors.lightBlue.shade900),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 40),
                        height: 5,
                        width: 100,
                        color: Colors.amber[800],
                      )
                    ])),
                Flex(
                    direction: orientation,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 150, right: 150),
                              height: 326.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          '../assets/services/yellow-hat/construction-plan-calculator-hard-hat-project-isto.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      'Projetos, construções e reformas',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.lightBlue.shade900),
                                      textAlign: TextAlign.start,
                                    ),
                                    margin:
                                        EdgeInsets.only(top: 20, bottom: 20),
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
                      ),
                      Card(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 150, right: 150),
                              height: 326.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          '../assets/services/structural/Steel_construction.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      'Reforços estruturais',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.lightBlue.shade900),
                                      textAlign: TextAlign.start,
                                    ),
                                    margin:
                                        EdgeInsets.only(top: 20, bottom: 20),
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
                      ),
                      Card(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 150, right: 150),
                              height: 326.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          '../assets/services/writting-papper/laudos-pericias.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      'Laudos e perícias',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.lightBlue.shade900),
                                      textAlign: TextAlign.start,
                                    ),
                                    margin:
                                        EdgeInsets.only(top: 20, bottom: 20),
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
                      )
                    ])
              ],
            )),
      );
    });
  }
}
