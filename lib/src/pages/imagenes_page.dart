import 'package:flutter/material.dart';

class ImagenesPage extends StatelessWidget {
  final listaImagenes = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imágenes')),
      body: _imagenesUrl(),
    );
  }

  Widget _imagenesLocales() {
    return ListView(
      children: [
        Image.asset('assets/img/landscape1.jpg',
            width: 100, height: 100, fit: BoxFit.cover),
        Image.asset('assets/img/landscape2.jpeg',
            width: 200, height: 100, fit: BoxFit.cover),
        Image.asset('assets/img/landscape3.jpg',
            width: 100, height: 100, fit: BoxFit.cover),
        Image.asset('assets/img/landscape4.jpeg',
            width: 200, height: 100, fit: BoxFit.cover),
      ],
    );
  }

  Widget _imagenesUrl() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return FadeInImage(
          image: NetworkImage(listaImagenes[index]),
          placeholder: AssetImage('assets/img/loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          fadeInCurve: Curves.fastOutSlowIn,
          imageErrorBuilder:
              (BuildContext context, Object error, StackTrace trace) {
            return Image.asset('assets/img/image_error.png');
          },
        );
      },
      itemCount: listaImagenes.length,
    );
  }
}
