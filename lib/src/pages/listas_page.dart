import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  final lista = ['Juan', 'Pedro', 'Pablo', 'David'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearListaLocal(),
    );
  }

  Widget _crearLista() {
    List<Widget> lista = List.generate(100, (int i) {
      return ListTile(
        title: Text('Elemento $i'),
        subtitle: Text('Este es el subtitulo'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/img/avatar.png'),
        ),
      );
    });
    return ListView(
      children: lista,
    );
  }

  Widget _crearListaLocal() {
    final elementos = lista.map((i) {
      return ListTile(
        title: Text('$i'),
        subtitle: Text('Este es el subtitulo'),
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/img/avatar.png'),
        ),
      );
    }).toList();
    return ListView(children: elementos);
  }
}
