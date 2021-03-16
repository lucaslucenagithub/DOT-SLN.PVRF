import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backToTop = MediaQuery.of(context).size.width <= 656
        ? Icon(
            Icons.arrow_upward,
            color: Colors.black,
          )
        : Text(
            'Voltar ao topo',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          );

    double padding = MediaQuery.of(context).size.width <= 355 ? 20 : 50;

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
                    text: '© PVRF Construtora. Criado por',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' .SLN',
                          style: TextStyle(
                              fontSize: 14,
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
                  onPressed: () {},
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
