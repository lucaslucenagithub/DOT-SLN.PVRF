import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      color: Colors.grey[50],
      child: Row(
        children: [
          Expanded(
              child: Column(children: [
            Container(
                margin: EdgeInsets.only(top: 40, left: 50),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                        child: Text(
                      'Sobre',
                      style: TextStyle(
                          fontSize: 48, color: Colors.lightBlue.shade900),
                    )),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 5,
                      width: 100,
                      color: Colors.amber[800],
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(50),
              child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
            )
          ])),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        '../assets/scaffolding/crane-construction-building.png'),
                    fit: BoxFit.cover)),
          )),
        ],
      ),
    );
  }
}
