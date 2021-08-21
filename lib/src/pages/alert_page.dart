import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text("message Alert"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, shape: StadiumBorder()),
            onPressed: () => _showAlert(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_time_outlined),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Titulo"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Exercitation labore amet excepteur nulla ullamco sint excepteur excepteur."),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              ElevatedButton(
                child: Text("Cancelar"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              ElevatedButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
