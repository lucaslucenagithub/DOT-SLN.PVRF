import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDesktop extends StatefulWidget {
  CardDesktop(
      {Key key, this.backgroundImage, this.titleText, this.subTitleText})
      : super(key: key);

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  _CardDesktopState createState() => _CardDesktopState(
      backgroundImage: backgroundImage,
      titleText: titleText,
      subTitleText: subTitleText);
}

class _CardDesktopState extends State<CardDesktop> {
  _CardDesktopState({this.backgroundImage, this.titleText, this.subTitleText});

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      width: 280,
      height: 610,
      margin: EdgeInsets.only(bottom: 50),
      child: Column(children: [
        Container(
          height: 350.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          )),
        ),
        Container(
            padding: EdgeInsets.all(24),
            child: Column(children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    titleText,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.lightBlue.shade900),
                    textAlign: TextAlign.start,
                  )),
              SizedBox(
                height: 8,
              ),
              Text(subTitleText),
            ]))
      ]),
    );
  }
}
