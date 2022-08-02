import 'package:flutter/material.dart';

class AlarmController extends ValueNotifier<List<bool>> {
  AlarmController(List<bool> list) : super(list);

  void switching({required int index, required bool isSwitched}) {
    value[index] = isSwitched;
    notifyListeners();
  }
}
