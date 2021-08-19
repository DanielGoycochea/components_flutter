import 'package:components_1/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _list(),
    );
  }
}

Widget _list() {
  print(menuProvider.options);

  return ListView(
    children: _listItem(),
  );
}

List<Widget> _listItem() {
  return [
    ListTile(
      title: Text("Hola Mundo"),
    ),
    Divider(),
    ListTile(
      title: Text("Hola Mundo"),
    ),
    Divider(),
  ];
}
