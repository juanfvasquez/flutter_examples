import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/providers/menu_provider.dart';
import 'package:widgets_basicos/src/utils/icons_map.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú')),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return FutureBuilder(
      future: menuProvider.cargarMenu(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _menuItems(snapshot.data, context),
        );
      },
    );
  }
}

List<Widget> _menuItems(List data, BuildContext context) {
  final List<Widget> items = [];
  data.forEach((item) {
    final widget = ListTile(
      title: Text(item['texto']),
      leading: getIcon(icon: item['icon']),
      trailing: getIcon(icon: 'keyboard_arrow_right'),
      onTap: () {
        Navigator.pushNamed(context, item['path']);
      },
    );
    items..add(widget)..add(Divider());
  });
  return items;
}
