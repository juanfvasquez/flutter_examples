import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List menu = [];

  Future<List<dynamic>> cargarMenu() async {
    final resp = await rootBundle.loadString('data/menu.json');
    Map data = json.decode(resp);
    menu = data['menu'];
    return menu;
  }
}

final menuProvider = _MenuProvider();
