import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
