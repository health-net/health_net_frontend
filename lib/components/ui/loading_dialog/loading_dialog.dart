import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_net_frontend/components/ui/loading_element/loading_element.dart';

class LoadingDialog {
  static bool _showing = false;

  static Future<void> show(BuildContext context) {
    if (!_showing) {
      _showing = true;
      showDialog(
        context: context,
        builder: (context) => Dialog(
          backgroundColor: Colors.transparent,
          child: LoadingElement(),
        ),
      );
    }
  }

  static void hide(BuildContext context) {
    if (_showing) {
      Navigator.of(context).pop();
      _showing = false;
    }
  }
}