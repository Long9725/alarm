import 'package:flutter/material.dart';

import 'package:alarm/src/ui/alarmList/componenets/textCard.dart';

import '../../alarmDetail/alarmDetail.dart';
import '../../widgets/switchByPlatform.dart';

class AlarmCard extends StatelessWidget {
  AlarmCard({Key? key, required this.isSwitched, required this.onChanged})
      : super(key: key);

  final bool isSwitched;
  final Function(bool) onChanged;

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
                  key: key,
                  isSwitched: isSwitched,
                )),
                SwitchByPlatForm(
                    key: key, isSwitched: isSwitched, onChanged: onChanged)
              ],
            )));
  }
}
