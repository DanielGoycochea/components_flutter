import 'package:components_1/src/pages/alert_page.dart';
import 'package:components_1/src/pages/avatar_page.dart';
import 'package:components_1/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'src/routes/routes.dart';
// import 'package:components_1/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      initialRoute: "/",
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
