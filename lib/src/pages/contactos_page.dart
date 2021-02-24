import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/providers/contactos_provider.dart';

class ContactosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      body: Center(
        child: _crearLista(),
      ),
    );
  }

  Widget _crearLista() {
    return FutureBuilder(
      future: contactosProvider.leerContactos(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _crearItems(List<dynamic> data) {
    List<Widget> items = [];
    data.forEach((i) {
      items.add(ListTile(
        title: Text(i['nombre']),
        subtitle: Text(i['datos']['dato1']),
      ));
    });
    return items;
  }
}
