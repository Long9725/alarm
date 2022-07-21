import 'package:flutter/material.dart';

import 'package:alarm/src/ui/alarmList/componenets/textCard.dart';

import '../../alarmDetail/alarmDetail.dart';
import '../../widgets/switchByPlatform.dart';

class AlarmCard extends StatelessWidget {
  AlarmCard({required this.isSwitched});

  bool isSwitched;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AlarmDetailPage()),
          );
        },
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                Expanded(
                    child: TextCard(
                  isSwitched: isSwitched,
                )),
                SwitchByPlatForm(isSwitched: isSwitched)
              ],
            )));
  }
}
