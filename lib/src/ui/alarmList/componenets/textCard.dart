import 'package:alarm/src/constants/color.dart';
import 'package:flutter/material.dart';

class TextCard extends StatefulWidget {
  TextCard({Key? key, required this.isSwitched}) : super(key: key);

  bool isSwitched;

  @override
  TextCardState createState() => TextCardState();
}

class TextCardState extends State<TextCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: SwitchByPlatform이 변경되면 textColor도 변경되게 하기
    Color textColor = widget.isSwitched ? Colors.white : IOS_SYSTEM_GRAY[0];

    // TODO: TextStyle에서 중복되는 textColor를 theme로 관리하기
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
                  style: TextStyle(color: textColor, fontSize: 16.0),
                )),
            Text(
              "8:00",
              style: TextStyle(color: textColor, fontSize: 24.0),
            )
          ],
        ),
        Text(
          "알람 설명",
          style: TextStyle(color: textColor, fontSize: 12.0),
        )
      ],
    );
  }
}
