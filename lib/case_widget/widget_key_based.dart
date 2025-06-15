/*
* Created by Neloy on 15 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

import 'package:flutter/material.dart';

class WidgetKeyBased extends StatelessWidget {
  const WidgetKeyBased({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(key: ValueKey("keyBasedWidget"), "Hello", textDirection: TextDirection.ltr,);
  }
}
