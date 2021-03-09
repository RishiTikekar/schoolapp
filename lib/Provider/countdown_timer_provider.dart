import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimerProvider with ChangeNotifier {
  Timer _timer;
  int start = 30;
  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (timer) {
      if (start == 0) {
        timer.cancel();
        notifyListeners();
      } else {
        start--;
        notifyListeners();
      }
    });
  }
}
