import 'package:alarm/src/ui/widgets/switchByPlatform.dart';
import 'package:flutter/material.dart';

import 'alarmCard.dart';

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
    return ListView.separated(
      itemCount: 11,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "알람",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ));
        } else {
          return AlarmCard(isSwitched: isSwitched[index - 1]);
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
