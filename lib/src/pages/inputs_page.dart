import 'dart:ffi';

import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        children: [_createInput(), Divider(), _createPerson()],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      onChanged: (valor) {
        setState(() {
          _name = valor;
          print(_name);
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        counter: Text("Letters ${_name.length}"),
        hintText: "Name",
        labelText: "Name",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        helperText: "only name",
      ),
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text("this Name is $_name"),
    );
  }
}
