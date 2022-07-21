import 'package:alarm/src/constants/color.dart';
import 'package:flutter/material.dart';

import 'componenets/body.dart';

class AlarmListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // TODO: 버튼 여백 넣기
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: TextButton(
            onPressed: () {},
            child: Text(
              '편집',
              style: TextStyle(color: IOS_ORAGNE, fontSize: 18),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: IOS_ORAGNE,
                ))
          ],
        ), // TODO: 스크롤이 가능하도록 만들기; why? 스크롤이 불가능하면 Overflow 문제가 발생한다.
        body: AlarmListBody());
  }
}
