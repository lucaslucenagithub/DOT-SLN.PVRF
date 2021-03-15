import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTablet extends StatefulWidget {
  CardTablet({Key key, this.backgroundImage, this.titleText, this.subTitleText})
      : super(key: key);

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  _CardTabletState createState() => _CardTabletState(
      backgroundImage: backgroundImage,
      titleText: titleText,
      subTitleText: subTitleText);
}

class _CardTabletState extends State<CardTablet> {
  _CardTabletState({this.backgroundImage, this.titleText, this.subTitleText});

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      width: 230,
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
            padding: EdgeInsets.all(14),
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
                height: 8,
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
