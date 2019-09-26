library miniapp1;

import 'package:flutter/material.dart';

import 'src/main.dart';

class MiniApp1 extends StatelessWidget {
  final BuildContext _rootContext;

  MiniApp1(BuildContext context) : _rootContext = context;

  @override
  Widget build(BuildContext context) {
    return AppRoot(rootContext: _rootContext);
  }

  static String appName = 'Mini App 1';
}
