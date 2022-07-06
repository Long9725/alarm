import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/counterText.dart';

// state == data
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  int _counter = 0;
  Count count = Count();

  void _incrementCounter() {
    _counter++; // 53번 눌러서 53
    count.num++;
    print("MyHomePage ${count.num}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: HomeBody(count: count),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}