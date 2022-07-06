import 'package:flutter/material.dart';

import 'counterText.dart';

class HomeBody extends StatelessWidget {
  HomeBody({required this.count});

  final Count count;

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          CounterText(title: 'hi', count: count)
        ],
      ),
    );
  }
}