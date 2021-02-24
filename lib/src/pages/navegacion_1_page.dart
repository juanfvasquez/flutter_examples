import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/pages/navegacion_2_page.dart';

class Navegacion1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegación'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Ir a detalles'),
            onPressed: () => _navegar(context),
            color: Colors.blue,
            textColor: Colors.white),
      ),
    );
  }

  void _navegar(BuildContext context) {
    Map mapa = {'nombre': 'Juan'};
    Navigator.pushNamed(context, 'detalles', arguments: mapa);
  }
}
