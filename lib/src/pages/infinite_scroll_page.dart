import 'package:flutter/material.dart';

class InfiniteScrollPage extends StatefulWidget {
  @override
  _InfiniteScrollPageState createState() => _InfiniteScrollPageState();
}

class _InfiniteScrollPageState extends State<InfiniteScrollPage> {
  List<int> _listaIndices = [];
  int _ultimo = 0;
  bool _cargando = false;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _generarNumeros();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _scrollController.animateTo(_scrollController.position.pixels + 15,
            curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 200));
        _generarNumeros();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Infinite Scroll')),
      body: Stack(
        children: [_imagenesUrl(), _crearIndicador()],
      ),
    );
  }

  Widget _imagenesUrl() {
    return RefreshIndicator(
      onRefresh: _recargar,
      child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) => _crearCard(index),
        itemCount: _listaIndices.length,
      ),
    );
  }

  Widget _crearCard(int index) {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                'https://picsum.photos/500/300/?image=${_listaIndices[index]}'),
            placeholder: AssetImage('assets/img/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fadeInCurve: Curves.fastOutSlowIn,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child:
                Text('${_listaIndices[index]}', style: TextStyle(fontSize: 25)),
          )
        ],
      ),
    );
  }

  void _generarNumeros() {
    _cargando = true;
    final duration = Duration(seconds: 3);
    Future.delayed(duration, () {
      _cargando = false;
      setState(() {});
    });
    for (int i = 0; i < 5; i++) {
      _ultimo++;
      _listaIndices.add(_ultimo);
    }
    setState(() {});
  }

  Widget _crearIndicador() {
    if (_cargando) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(height: 15)
        ],
      );
    } else {
      return Container();
    }
  }

  void ocultarIndicador() {
    _cargando = false;
  }

  Future<Null> _recargar() async {
    _listaIndices.clear();
    _generarNumeros();
    return Future.delayed(Duration(seconds: 3));
  }
}
