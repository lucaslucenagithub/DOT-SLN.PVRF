import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double titleSize = MediaQuery.of(context).size.width <= 600
        ? 32
        : MediaQuery.of(context).size.width >= 601 &&
                MediaQuery.of(context).size.width <= 1048
            ? 42
            : 48;

    double descriptionSize = MediaQuery.of(context).size.width <= 600
        ? 12
        : MediaQuery.of(context).size.width >= 601 &&
                MediaQuery.of(context).size.width <= 1048
            ? 14
            : 18;

    Axis axisDirection = MediaQuery.of(context).size.width <= 520
        ? Axis.vertical
        : Axis.horizontal;

    double sectionHeigh = MediaQuery.of(context).size.width <= 376 ? 900 : 800;

    return Container(
      height: sectionHeigh,
      color: Colors.grey[50],
      child: Flex(
        direction: axisDirection,
        children: [
          Expanded(
              flex: 2,
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
                Container(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                    style: TextStyle(fontSize: descriptionSize),
                  ),
                )
              ])),
          Expanded(
              flex: 1,
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
