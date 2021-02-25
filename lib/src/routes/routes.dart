import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/pages/alert_page.dart';
import 'package:widgets_basicos/src/pages/animacion_page.dart';
import 'package:widgets_basicos/src/pages/cards_page.dart';
import 'package:widgets_basicos/src/pages/contactos_page.dart';
import 'package:widgets_basicos/src/pages/fade_in_image_page.dart';
import 'package:widgets_basicos/src/pages/imagenes_page.dart';
import 'package:widgets_basicos/src/pages/inputs_page.dart';
import 'package:widgets_basicos/src/pages/listas_page.dart';
import 'package:widgets_basicos/src/pages/menu_page.dart';
import 'package:widgets_basicos/src/pages/navegacion_1_page.dart';
import 'package:widgets_basicos/src/pages/navegacion_2_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Navegacion1Page(),
    'detalles': (BuildContext context) => Navegacion2Page(),
    'contactos': (BuildContext context) => ContactosPage(),
    'menu': (BuildContext context) => MenuPage(),
    'alerts': (BuildContext context) => AlertPage(),
    'images': (BuildContext context) => ImagenesPage(),
    'cards': (BuildContext context) => CardsPage(),
    'animation': (BuildContext context) => AnimacionPage(),
    'inputs': (BuildContext context) => InputsPage(),
    'lists': (BuildContext context) => ListasPage(),
    'fade-in': (BuildContext context) => FadeInImagePage(),
  };
}
