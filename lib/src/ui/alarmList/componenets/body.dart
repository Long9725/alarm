import 'package:alarm/src/ui/alarmList/componenets/textCard.dart';
import 'package:flutter/material.dart';

import '../../widgets/switchByPlatform.dart';

class AlarmListBody extends StatelessWidget {
  List<bool> isSwitched = [
    false,
    false,
    false,
    true,
    false,
    true,
    true,
    false,
    false,
    true
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
                child: Row(
              children: [
                Expanded(child: TextCard()),
                SwitchByPlatForm(isSwitched: isSwitched[index])
              ],
            )));
      },
    );
  }
}
