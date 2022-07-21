import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SwitchByPlatForm extends StatefulWidget {
  SwitchByPlatForm({Key? key, required this.isSwitched}) : super(key: key);

  bool isSwitched;

  @override
  SwitchByPlatFormState createState() => SwitchByPlatFormState();
}

class SwitchByPlatFormState extends State<SwitchByPlatForm> {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSwitch(
            value: widget.isSwitched,
            onChanged: (value) {
              setState(() {
                widget.isSwitched = value;
              });
              widget.isSwitched = value;
            },
            activeColor: Colors.green,
          )
        : Switch(
            value: widget.isSwitched,
            onChanged: (value) {
              setState(() {
                widget.isSwitched = value;
              });
              widget.isSwitched = value;
            },
            activeColor: Colors.green,
            activeTrackColor: Colors.lightGreenAccent);
  }
}
