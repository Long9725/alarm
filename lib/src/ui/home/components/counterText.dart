import 'package:flutter/material.dart';

class Count {
  int num = 0;
}

class CounterText extends StatefulWidget {
  const CounterText({Key? key, required this.title, required this.count}) : super(key: key);

  final String title;
  final Count count;

  @override
  State<CounterText> createState() => CounterTextState();
}

class CounterTextState extends State<CounterText> {
  int counter = 0;

  void _incrementCounter() {

    setState(() {
      counter++;
      widget.count.num++;
      print("CounterText $counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        '${widget.count.num}',
        style: Theme.of(context).textTheme.headline4,
      ),
      OutlinedButton(onPressed: _incrementCounter, child: Text("hi"))
    ]);
  }
}
