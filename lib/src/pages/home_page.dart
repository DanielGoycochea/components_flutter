import 'package:components_1/src/providers/menu_provider.dart';
import 'package:components_1/src/utils/icon_string_util.dart';
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
        children: _listItem(snapshot.data, context),
      );
    },
  );
}

List<Widget> _listItem(List<dynamic> data, BuildContext context) {
  final List<Widget> options = [];
  data.forEach((option) {
    final widgetTemp = ListTile(
      title: Text(option["texto"]),
      leading: getIcon(option["icon"]),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blueGrey,
      ),
      onTap: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return AlertPage();
        // });
        // Navigator.push(context, route);

        Navigator.pushNamed(context, option["ruta"]);
      },
    );
    options..add(widgetTemp)..add(Divider());
  });
  return options;
}
