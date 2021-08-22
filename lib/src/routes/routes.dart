import 'package:components_1/src/pages/alert_page.dart';
import 'package:components_1/src/pages/animated_container_page.dart';
import 'package:components_1/src/pages/avatar_page.dart';
import 'package:components_1/src/pages/card_page.dart';
import 'package:components_1/src/pages/home_page.dart';
import 'package:components_1/src/pages/inputs_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "avatar": (BuildContext context) => AvatarPage(),
    "alert": (BuildContext context) => AlertPage(),
    "card": (BuildContext context) => CardPage(),
    "animatedContainer": (BuildContext context) => AnimatedContainerPage(),
    "inputs": (BuildContext context) => InputsPage(),
  };
}
