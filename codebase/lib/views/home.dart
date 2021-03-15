import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double descriptionSize = MediaQuery.of(context).size.width <= 514
        ? 36
        : MediaQuery.of(context).size.width >= 515 &&
                MediaQuery.of(context).size.width <= 828
            ? 47
            : 67;

    double paddingLeftRight =
        MediaQuery.of(context).size.width <= 615 ? 2 : 150;

    return Container(
      padding: EdgeInsets.only(left: paddingLeftRight, right: paddingLeftRight),
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
                fontSize: descriptionSize,
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
    );
  }
}
