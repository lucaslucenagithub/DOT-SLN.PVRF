import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardMobile extends StatefulWidget {
  CardMobile({Key key, this.backgroundImage, this.titleText, this.subTitleText})
      : super(key: key);

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  _CardMobileState createState() => _CardMobileState(
      backgroundImage: backgroundImage,
      titleText: titleText,
      subTitleText: subTitleText);
}

class _CardMobileState extends State<CardMobile> {
  _CardMobileState({this.backgroundImage, this.titleText, this.subTitleText});

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      width: 400,
      height: 510,
      margin: EdgeInsets.only(bottom: 40),
      child: Column(children: [
        Container(
          height: 260.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          )),
        ),
        Container(
            padding: EdgeInsets.all(18),
            child: Column(children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    titleText,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.lightBlue.shade900),
                    textAlign: TextAlign.start,
                  )),
              SizedBox(
                height: 18,
              ),
              Text(
                subTitleText,
                style: TextStyle(fontSize: 12),
              ),
            ]))
      ]),
    );
  }
}
