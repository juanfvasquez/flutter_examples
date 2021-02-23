import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  final lista = ['Juan', 'Pedro', 'Pablo', 'David'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cards')), body: _crearListaLocal());
  }

  Widget _crearListaLocal() {
    List<Widget> elementos = [];
    for (String s in lista) {
      elementos
        ..add(_crearCard(s))
        ..add(SizedBox(
          height: 10,
        ));
    }
    return ListView(children: elementos);
  }

  Widget _crearCard(String i) {
    return Card(
      elevation: 20,
      child: Column(
        children: [
          ListTile(
            title: Text('$i'),
            subtitle: Text('Este es el subtitulo'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/img/avatar.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Acción 1'),
                onPressed: null,
              ),
              FlatButton(
                child: Text('Acción 2'),
                onPressed: () {},
                textColor: Color.fromRGBO(20, 120, 20, 1),
              )
            ],
          )
        ],
      ),
    );
  }
}
