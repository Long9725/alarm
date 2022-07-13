import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: EdgeInsets.only(right: 8.0),
                // TODO: UI 로직과 비즈니스 로직을 분리해서 데이터를 관리하기
                child: Text(
                  "오전",
                  style: TextStyle(fontSize: 16.0),
                )),
            Text(
              "8:00",
              style: TextStyle(fontSize: 24.0),
            )
          ],
        ),
        Text(
          "알람 설명",
          style: TextStyle(fontSize: 12.0),
        )
      ],
    );
  }
}
