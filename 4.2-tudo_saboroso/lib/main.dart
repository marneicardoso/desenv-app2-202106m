import 'package:flutter/material.dart';
import 'package:tudo_saboroso/TudoSaboroso.dart';

void main() => runApp(
  MaterialApp(
    title: "App Tudo Saboroso",
    home: TudoSaboroso(),
    debugShowCheckedModeBanner: false,
    // Retirar o DEBUG da AppBar
  )
);
