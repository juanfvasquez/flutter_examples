import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/pages/cards_page.dart';
import 'package:widgets_basicos/src/pages/inputs_page.dart';
import 'package:widgets_basicos/src/pages/listas_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: InputsPage());
  }
}
