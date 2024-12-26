import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  AdaptiveButtons(this.text, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Platform.isIOS
          ? CupertinoButton(
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: onPress,
            )
          : FlatButton(
              textColor: Theme.of(context).primaryColor,
              onPressed: onPress,
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
