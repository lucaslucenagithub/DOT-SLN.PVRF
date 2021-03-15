import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTabletDesktop extends StatefulWidget {
  CardTabletDesktop(
      {Key key,
      this.backgroundColor,
      this.backgroundImage,
      this.margin,
      this.textHeigh,
      this.imageHeigh,
      this.cardWidth,
      this.descriptionColor,
      this.textPadding,
      this.titleColor,
      this.titleText,
      this.subTitleText})
      : super(key: key);

  final Color backgroundColor;
  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;
  final EdgeInsetsGeometry margin;
  final double cardWidth;
  final double imageHeigh;
  final double textHeigh;
  final Color titleColor;
  final Color descriptionColor;
  final EdgeInsetsGeometry textPadding;

  @override
  _CardTabletDesktopState createState() => _CardTabletDesktopState(
      backgroundImage: backgroundImage,
      titleText: titleText,
      subTitleText: subTitleText);
}

class _CardTabletDesktopState extends State<CardTabletDesktop> {
  _CardTabletDesktopState(
      {this.backgroundColor,
      this.backgroundImage,
      this.margin,
      this.textHeigh,
      this.imageHeigh,
      this.cardWidth,
      this.descriptionColor,
      this.textPadding,
      this.titleColor,
      this.titleText,
      this.subTitleText});

  final Color backgroundColor;
  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;
  final EdgeInsetsGeometry margin;
  final double cardWidth;
  final double imageHeigh;
  final double textHeigh;
  final Color titleColor;
  final Color descriptionColor;
  final EdgeInsetsGeometry textPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(width: 1.0, color: Colors.grey[200])),
      width: 280,
      height: 610,
      // color: Colors.grey[50],
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
