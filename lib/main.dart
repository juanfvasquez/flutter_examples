import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/pages/animacion_page.dart';
import 'package:widgets_basicos/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada ${settings.name}');
        final route = MaterialPageRoute(
            builder: (BuildContext context) => AnimacionPage());
        return route;
      },
    );
  }
}
