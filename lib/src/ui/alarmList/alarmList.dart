import 'package:alarm/src/ui/widgets/switchByPlatform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'componenets/body.dart';
import 'componenets/textCard.dart';

class AlarmListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // TODO: 버튼 여백 넣기
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: TextButton(
            onPressed: () {},
            child: Text(
              '편집',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ))
          ],
        ),
        // TODO: 스크롤이 가능하도록 만들기; why? 스크롤이 불가능하면 Overflow 문제가 발생한다.
        body: AlarmListBody());
  }
}
