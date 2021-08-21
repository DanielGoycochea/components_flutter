import 'package:components_1/src/pages/alert_page.dart';
import 'package:components_1/src/pages/avatar_page.dart';
import 'package:components_1/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "avatar": (BuildContext context) => AvatarPage(),
    "alert": (BuildContext context) => AlertPage(),
  };
}
