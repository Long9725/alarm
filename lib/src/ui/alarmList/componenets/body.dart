import 'package:flutter/material.dart';

import '../../../controller/alarm.dart';

import 'alarmCard.dart';

class AlarmListBody extends StatelessWidget {
  AlarmListBody({Key? key}) : super(key: key);

  final _controller = AlarmController(
      [false, false, false, true, false, true, true, false, false, true]);

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
          return ValueListenableBuilder<List<bool>>(
            valueListenable: _controller,
            builder: (BuildContext context, List<bool> value, Widget? child) {
              // This builder will only get called when the _counter
              // is updated.
              return AlarmCard(
                isSwitched: value[index - 1],
                onChanged: (value) =>
                    _controller.switching(index: index - 1, isSwitched: value),
              );
            },
          );
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
