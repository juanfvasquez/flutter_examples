import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/pages/navegacion_1_page.dart';
import 'package:widgets_basicos/src/pages/navegacion_2_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Navegacion1Page(),
    'detalles': (BuildContext context) => Navegacion2Page()
  };
}
