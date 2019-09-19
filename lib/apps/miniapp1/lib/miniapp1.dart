library miniapp1;

import 'package:flutter/material.dart';

import 'src/main.dart';

class MiniApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppRoot();
  }
}

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
