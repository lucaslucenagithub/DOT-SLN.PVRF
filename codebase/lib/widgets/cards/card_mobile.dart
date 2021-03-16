import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardMobile extends StatefulWidget {
  CardMobile({Key key, this.backgroundImage, this.titleText, this.subTitleText})
      : super(key: key);

  final AssetImage backgroundImage;
  final String titleText;
  final String subTitleText;

  @override
  _CardMobileState createState() => _CardMobileState();
}

class _CardMobileState extends State<CardMobile> {
  @override
  Widget build(BuildContext context) {
    double titleSize = MediaQuery.of(context).size.width >= 440 &&
            MediaQuery.of(context).size.width <= 852
        ? 22
        : MediaQuery.of(context).size.width >= 360 &&
                MediaQuery.of(context).size.width <= 439
            ? 18
            : 16;

    double subTitleSize = MediaQuery.of(context).size.width >= 440 &&
            MediaQuery.of(context).size.width <= 852
        ? 15
        : MediaQuery.of(context).size.width >= 360 &&
                MediaQuery.of(context).size.width <= 439
            ? 14
            : 12;

    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[50],
          border: Border.all(width: 1.0, color: Colors.grey[200]),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      width: 400,
      height: 510,
      margin: EdgeInsets.only(bottom: 40),
      child: Column(children: [
        Container(
          height: 260.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: widget.backgroundImage,
            fit: BoxFit.cover,
          )),
        ),
        Container(
            padding: EdgeInsets.all(18),
            child: Column(children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.titleText,
                    style: TextStyle(
                        fontSize: titleSize,
                        fontWeight: FontWeight.normal,
                        color: Colors.lightBlue.shade900),
                    textAlign: TextAlign.start,
                  )),
              SizedBox(
                height: 18,
              ),
              Text(
                widget.subTitleText,
                style: TextStyle(fontSize: subTitleSize),
              ),
            ]))
      ]),
    );
  }
}
