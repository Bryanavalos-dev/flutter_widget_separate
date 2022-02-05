import 'package:flutter/material.dart';
import 'package:flutter_widget_separete/principal/principal.dart';
import 'package:flutter_widget_separete/principal/useWid.dart';

void main() {
  runApp(UsoWidget());
}

class UsoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "ClaseWidgets", home: Principal());
  }
}
