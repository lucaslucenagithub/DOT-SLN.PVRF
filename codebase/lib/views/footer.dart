import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key key, @required this.scrollToIndex}) : super(key: key);

  final Function scrollToIndex;

  @override
  Widget build(BuildContext context) {
    Widget backToTop = MediaQuery.of(context).size.width <= 666
        ? Icon(
            Icons.arrow_upward,
            color: Colors.black,
          )
        : Text(
            'Voltar ao topo',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          );

    double padding = MediaQuery.of(context).size.width <= 355 ? 20 : 50;

    double textSize = MediaQuery.of(context).size.width <= 580 ? 12 : 14;

    return Container(
      padding: EdgeInsets.all(padding),
      height: 150.0,
      color: Colors.grey[50],
      alignment: Alignment.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 4,
                child: RichText(
                  text: TextSpan(
                    text: '© PVRF Construtora. Feito por',
                    style: TextStyle(
                        fontSize: textSize,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                    children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              await launch('https://www.dot-sln.com.br');
                            },
                          text: ' .SLN',
                          style: TextStyle(
                              fontSize: textSize,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
            SizedBox(
              width: 15,
            ),
            Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: backToTop,
                  onPressed: () async => scrollToIndex(0),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(Size(0, 80)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}
