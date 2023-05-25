import 'package:flutter/material.dart';
import 'package:abp/pages.dart';
import 'package:abp/shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: primaryColor,
        canvasColor: const Color.fromARGB(255, 255, 188, 188),
      ),
      home: const wellcomepage(),
    );
  }
}
