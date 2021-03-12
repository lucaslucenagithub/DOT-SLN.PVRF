import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;
import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EmbededMap extends StatelessWidget {
  const EmbededMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ui.platformViewRegistry.registerViewFactory(
        'test-view-type',
        (int viewId) => IFrameElement()
          ..width = '640'
          ..height = '360'
          ..src =
              "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14635.100183842442!2d-46.59440242267025!3d-23.504610777994305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5f4fafac8399%3A0xccbeef5f59ab61ef!2sVila%20Maria%20Alta%2C%20S%C3%A3o%20Paulo%20-%20State%20of%20S%C3%A3o%20Paulo!5e0!3m2!1sen!2sbr!4v1615425716177!5m2!1sen!2sbr"
          ..style.border = 'none');

    return Container(
        padding: EdgeInsets.only(top: 50, left: 150, right: 150, bottom: 20),
        margin: EdgeInsets.only(top: 20),
        child: HtmlElementView(viewType: 'test-view-type'));
  }
}
