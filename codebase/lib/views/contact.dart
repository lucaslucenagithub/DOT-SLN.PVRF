import 'package:codebase/widgets/embeded-map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sectionTitleSize = MediaQuery.of(context).size.width <= 600
        ? 36
        : MediaQuery.of(context).size.width >= 601 &&
                MediaQuery.of(context).size.width <= 1048
            ? 42
            : 48;

    double budgetTitleSize = MediaQuery.of(context).size.width <= 600 &&
            MediaQuery.of(context).size.width >= 414
        ? 23
        : MediaQuery.of(context).size.width <= 414
            ? 18
            : 32;

    double titlesSize = MediaQuery.of(context).size.width <= 600 ? 19 : 26;
    double subTitlesSize = MediaQuery.of(context).size.width <= 600 ? 11 : 14;

    return Container(
      height: 1000.0,
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Container(
                        child: Text(
                      'Contato',
                      style: TextStyle(
                          fontSize: sectionTitleSize,
                          color: Colors.lightBlue.shade900),
                    )),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 100,
                      color: Colors.amber[800],
                    ),
                  ],
                )),
            Expanded(
              child: EmbededMap(),
            ),
            Container(
                padding: EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Inquéritos',
                                style: TextStyle(
                                    fontSize: titlesSize,
                                    color: Colors.lightBlue.shade900),
                              )),
                          Container(
                            child: Text(
                              'Para qualquer consulta, dúvida ou recomendação, ligue: 123-456-7890',
                              style: TextStyle(fontSize: subTitlesSize),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                              child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Escritório Central',
                                style: TextStyle(
                                    fontSize: titlesSize,
                                    color: Colors.lightBlue.shade900),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Vila Maria Alta - 999999-99',
                                style: TextStyle(fontSize: subTitlesSize),
                              ),
                            )
                          ]))
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'Solicite um orçamento: 123-456-7890',
                style: TextStyle(
                    fontSize: budgetTitleSize,
                    color: Colors.lightBlue.shade900),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 50, top: 50),
                  child: Row(children: [
                    Container(
                        margin: EdgeInsets.only(right: 25),
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          size: 28.0,
                          color: Colors.blue,
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 25),
                        child: Icon(
                          FontAwesomeIcons.envelope,
                          size: 28.0,
                          color: Colors.red,
                        )),
                    Container(
                        margin: EdgeInsets.only(right: 25),
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          size: 28.0,
                          color: Colors.black,
                        ))
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
