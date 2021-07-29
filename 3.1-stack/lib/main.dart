import 'package:flutter/material.dart';
import 'package:stack/StackPilha.dart';

void main() => runApp(StackApp());

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Widget",
      home: Scaffold(
        body: StackPilha()
      )
    );
  }
}
