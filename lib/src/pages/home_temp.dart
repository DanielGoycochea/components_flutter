import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ["uno", "dos", "tres", "cuatro", "cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes temp"),
      ),
      // body: ListView(children: _createItems()),
      body: ListView(children: _createListShort()),
    );
  }

  // List<Widget> _createItems() {
  //   List<Widget> list = new List<Widget>();

  //   for (var option in options) {
  //     final tempWidget = ListTile(
  //       title: Text(option),
  //     );
  //     list..add(tempWidget)..add(Divider());
  //   }

  //   return list;
  // }

  List<Widget> _createListShort() {
    var widgets = options
        .map((item) => Column(
              children: [
                ListTile(
                  title: Text(item),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                Divider()
              ],
            ))
        .toList();
    return widgets;
  }
}
