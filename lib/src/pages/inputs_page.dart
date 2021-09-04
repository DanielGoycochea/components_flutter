import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _name = "";
  String _email = "";
  String _password = "";
  String _date = "";

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        children: [
          _createInput(),
          Divider(),
          _createInputEmail(),
          Divider(),
          _createInputPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPerson(),
        ],
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
      subtitle: Text("this email $_email"),
    );
  }

  Widget _createInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (valor) {
        setState(() {
          _email = valor;
          print(_email);
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: "email",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
    );
  }

  Widget _createInputPassword() {
    return TextField(
      obscureText: true,
      onChanged: (valor) {
        setState(() {
          _password = valor;
          print(_password);
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: "password",
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDay(context);
      },
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: "Fecha de Ncimiento",
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_today_outlined),
      ),
    );
  }

  _selectDay(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2000),
        lastDate: new DateTime(2025),
        locale: Locale("es", "MX"));
    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }
}
