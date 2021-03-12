import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 36
              : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                  ? 47
                  : 67;

      double paddingLeftRight =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 2
              : 150;

      return Container(
        padding:
            EdgeInsets.only(left: paddingLeftRight, right: paddingLeftRight),
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
    });
  }
}
