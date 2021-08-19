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
  // print(menuProvider.options);
  // menuProvider.loadingData().then((options) {
  //   print(options);
  // });
  return FutureBuilder(
    future: menuProvider.loadingData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: _listItem(snapshot.data),
      );
    },
  );
}

List<Widget> _listItem(data) {
  final List<Widget> options = [];
  data.forEach((option) {
    final widgetTemp = ListTile(
      title: Text(option["texto"]),
      leading: Icon(
        Icons.access_alarm,
        color: Colors.blueGrey,
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blueGrey,
      ),
      onTap: () {},
    );
    options..add(widgetTemp)..add(Divider());
  });
  return options;
}
