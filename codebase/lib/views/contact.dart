import 'package:codebase/widgets/embeded-map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double titleSize = MediaQuery.of(context).size.width <= 600
        ? 32
        : MediaQuery.of(context).size.width >= 601 &&
                MediaQuery.of(context).size.width <= 1048
            ? 42
            : 48;

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
                          fontSize: titleSize,
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
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                              top: 50, bottom: 50, right: 100, left: 150),
                          child: Column(children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Inquéritos',
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.lightBlue.shade900),
                                )),
                            Container(
                              child: Text(
                                  'Para qualquer consulta, dúvida ou recomendação, ligue: 123-456-7890'),
                            )
                          ]))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                          child: Column(children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.center,
                          child: Text(
                            'Escritório Central',
                            style: TextStyle(
                                fontSize: 26, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        Container(
                          child: Text('Vila Maria Alta - 999999-99'),
                        )
                      ]))
                    ],
                  ),
                )
              ],
            ),
            Container(
              child: Text(
                'Solicite um orçamento: 123-456-7890',
                style:
                    TextStyle(fontSize: 32, color: Colors.lightBlue.shade900),
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
