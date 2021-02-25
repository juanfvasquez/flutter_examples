import 'package:flutter/material.dart';
import 'package:widgets_basicos/src/services/pokemon_service.dart';

class ListaPokemonPage extends StatefulWidget {
  @override
  _ListaPokemonPageState createState() => _ListaPokemonPageState();
}

class _ListaPokemonPageState extends State<ListaPokemonPage> {
  int _pagina = 0;

  @override
  void initState() {
    super.initState();
    _consultar();
  }

  void _consultar() async {
    Map mapa = await pokemonService.consultarPokemones(_pagina);
    print(mapa['results'][0]['name']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pokemon')),
      body: Center(
        child: Text('Lista Pokemon'),
      ),
    );
  }
}
