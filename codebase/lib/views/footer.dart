import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
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
            Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: Text(
                    'Voltar ao topo',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
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
