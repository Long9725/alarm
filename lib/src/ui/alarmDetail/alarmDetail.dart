import 'dart:core';

import 'package:alarm/src/constants/color.dart';
import 'package:alarm/src/constants/padding.dart';
import 'package:alarm/src/ui/widgets/titleWithDescriptionBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // TODO: 배경색 찾기
    return Scaffold(
        backgroundColor: Color(0xff171717),
        appBar: AppBar(
          backgroundColor: Color(0xff171717),
          elevation: 0,
          title: Text(
            "알람 편집",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          leading: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "취소",
              style: TextStyle(color: IOS_ORAGNE, fontSize: 16),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "저장",
                  style: TextStyle(color: IOS_ORAGNE, fontSize: 16),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
                height: size.height * 0.25,
                child: CupertinoTheme(
                    data: CupertinoThemeData(
                      brightness: Theme.of(context).brightness,
                    ),
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (dateTime) {},
                    ))),
            Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(kDefaultPadding)),
                    color: IOS_SYSTEM_GRAY[2]),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: TitleWithDescriptionBox(
                          title: Text(
                            "반복",
                            style: TextStyle(color: Colors.white),
                          ),
                          description: Text(
                            "안 함 >",
                            style: TextStyle(
                              color: IOS_SYSTEM_GRAY[0],
                            ),
                          ),
                        ))
                  ],
                )),
            Text("달력")
          ],
        ));
  }
}
