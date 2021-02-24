import 'package:flutter/material.dart';

class Navegacion2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map mapa = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Regresar'),
            onPressed: () => _regresar(context, mapa),
            color: Colors.blue,
            textColor: Colors.white),
      ),
    );
  }

  void _regresar(BuildContext context, Map mapa) {
    print(mapa['nombre']);
    Navigator.pop(context);
  }
}
