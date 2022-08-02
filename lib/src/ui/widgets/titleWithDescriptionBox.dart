import 'package:flutter/material.dart';

class TitleWithDescriptionBox extends StatelessWidget {
  final Widget title;
  final Widget description;
  final double? padding;

  const TitleWithDescriptionBox(
      {Key? key, required this.title, required this.description, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPaddingNull = padding == null ? true : false;

    return isPaddingNull
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Expanded(child: title), description],
          )
        : Padding(
            padding: EdgeInsets.all(padding!),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Expanded(child: title), description],
            ));
  }
}
