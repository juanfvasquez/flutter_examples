import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String valor = 'Valor';
  String email = '';
  String password = '';
  String numero = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: ListView(
        children: [
          Text(valor),
          _crearInput(),
          Divider(),
          Text(email),
          _crearInputEmail(),
          Divider(),
          Text(password),
          _crearInputPassword(),
          Divider(),
          Text(numero),
          _crearInputNumerico(),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: 'Label',
        hintText: 'Hint',
        helperText: 'Helper Text',
        suffixIcon: Icon(Icons.account_balance_wallet_sharp),
      ),
      onChanged: (value) {
        valor = value;
        setState(() {});
      },
    );
  }

  Widget _crearInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          labelText: 'Label',
          hintText: 'Hint',
          helperText: 'Helper Text',
          icon: Icon(Icons.email)),
      onChanged: (value) {
        email = value;
        setState(() {});
      },
    );
  }

  Widget _crearInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Label',
          hintText: 'Hint',
          helperText: 'Helper Text',
          icon: Icon(Icons.biotech_rounded)),
      onChanged: (value) {
        password = value;
        setState(() {});
      },
    );
  }

  Widget _crearInputNumerico() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: 'Label',
          hintText: 'Hint',
          helperText: 'Helper Text',
          icon: Icon(Icons.biotech_rounded)),
      onChanged: (value) {
        numero = value;
        setState(() {});
      },
    );
  }
}
