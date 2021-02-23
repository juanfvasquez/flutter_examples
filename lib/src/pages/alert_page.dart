import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alerts'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Mostrar Alerta'),
            onPressed: () {
              _mostrarAlerta(context);
            },
            color: Colors.red,
            textColor: Colors.white,
          ),
        ));
  }

  void _mostrarAlerta(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirmar cambios'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Estás seguro de guardar los cambios?'),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              )
            ],
          );
        });
  }
}
