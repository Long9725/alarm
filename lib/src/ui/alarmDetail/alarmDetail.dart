import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> children = [Text("하이")];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "알람 편집",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          leading: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "취소",
              style: TextStyle(color: Colors.orangeAccent, fontSize: 16),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "저장",
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
                height: size.height * 0.25,
                child: CupertinoDatePicker(onDateTimeChanged: (dateTime) {})),
            Text("달력")
          ],
        ));
  }
}
