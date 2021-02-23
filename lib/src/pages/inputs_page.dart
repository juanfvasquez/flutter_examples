import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String valor = 'Valor';
  String email = '';
  String password = '';
  String numero = '';
  String fechaSeleccionada = '';
  String itemSeleccion = 'Azul';

  final listaItems = ['Azul', 'Rojo', 'Negro', 'Verde', 'Amarillo', ''];

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
          Divider(),
          Text(fechaSeleccionada),
          _crearDateInput(context),
          Divider(),
          _crearDropdown(),
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

  Widget _crearDateInput(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Fecha',
          hintText: 'Fecha',
          helperText: 'Fecha',
          icon: Icon(Icons.biotech_rounded)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _abrirDatePicker(context);
      },
    );
  }

  void _abrirDatePicker(BuildContext context) async {
    DateTime fecha = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2025));

    if (fecha != null) {
      DateFormat dateFormat = DateFormat('dd/MM/yyyy');
      fechaSeleccionada = dateFormat.format(fecha);
      setState(() {});
    }
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        Expanded(
          child: DropdownButton(
            value: itemSeleccion,
            items: _crearItemsDropdown(),
            onChanged: (opcion) {
              itemSeleccion = opcion;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem> _crearItemsDropdown() {
    List<DropdownMenuItem<String>> items = List();
    listaItems.forEach((s) {
      final item = DropdownMenuItem(
        child: Text(s),
        value: s,
      );
      items.add(item);
    });
    return items;
  }
}
