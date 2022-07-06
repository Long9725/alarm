/*
* 제일 상단에는 flutter 공식 패키지
* 중간에는 순서 상관 X 너가 원하는 패키지, 대신 같은 계열의 패키지면 수직관게에 따라 정렬해주기
* 제일 하단에는 직접 제작한 패키지나 라이브러리
*/

import 'package:flutter/material.dart';

import 'package:alarm/src/app.dart';


void main() {
  runApp(const MyApp());
}

/*
class와 instance
class MyApp => 설계도
instance MyApp() => 설계도를 통해 만들어진 객체

강아지 => 추상적인 개념 => 어떠한 특징들이 있음 => 귀 길이가 15cm
푸들, 불독, 누렁이, 진돗개 등등등

진돗개 => 추상적인 개념
진돗개들은 각각 특징이 있다. 공통적인 특징은 똑같은데, 그 실제 값이랄까? 이런게 조금 미묘하게 다르다. /

extends => 상속 => 부모와 자식 => statelessWidget이라는 부모에게서 MyApp이라는 자식이 무언가를 받는다.

부모의 무언가를 쓸 때 명시적으로 부모의 일부분이라는 것을 적어주기
super.a() => 부모가 구현한거 그대로 가져다 쓰기

@override => 부모가 구현한거 자식이 다시 커스터마이징해서 쓰기
a() {}

*/

