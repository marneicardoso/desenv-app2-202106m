import 'package:flutter/material.dart';
import 'package:layout/Layout.dart';

void main() {}

class MeuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Básico",
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home: Layout(),
    );
  }
}
