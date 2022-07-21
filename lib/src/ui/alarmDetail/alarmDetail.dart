import 'package:alarm/src/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> children = [Text("하이")];

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
            Padding(
                padding: EdgeInsets.all(16),
                child: InkWell(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      "반복",
                      style: TextStyle(color: Colors.white),
                    )),
                    Text(
                      "안 함",
                      style: TextStyle(
                        color: IOS_SYSTEM_GRAY[0],
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      color: IOS_SYSTEM_GRAY[0],
                    )
                  ],
                ))),
            Text("달력")
          ],
        ));
  }
}
