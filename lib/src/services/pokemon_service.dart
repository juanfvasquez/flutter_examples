import 'dart:convert';

import 'package:http/http.dart' as http;

class _PokemonService {
  int _elementosPorPagina = 10;

  Future<Map> consultarPokemones(int pagina) async {
    int _offset = pagina * _elementosPorPagina;
    String url =
        'https://pokeapi.co/api/v2/pokemon?offset=$_offset&limit=$_elementosPorPagina';
    final respuesta = await http.get(url);
    Map<String, dynamic> mapaRespuesta = json.decode(respuesta.body);
    return mapaRespuesta;
  }
}

final pokemonService = _PokemonService();
