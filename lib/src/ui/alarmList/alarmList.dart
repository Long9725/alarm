import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlarmListPage extends StatelessWidget {
  bool isSwitched = false;

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
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                    child: Row(
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                    )),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        // TODO: Stateful로 바꿔야함
                        // setState(() {
                        //   isSwitched = value;
                        // });
                        isSwitched = value;
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.lightGreenAccent,
                    )
                  ],
                ))),
            // TODO: 반복되는 UI를 Component로 만들기
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8.0),
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
                ))),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8.0),
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
                ))),
          ],
        ));
  }
}
