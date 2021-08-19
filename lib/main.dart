import 'package:components_1/src/pages/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:components_1/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Components App',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
