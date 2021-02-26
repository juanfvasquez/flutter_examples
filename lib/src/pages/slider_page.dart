import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valor = 30;
  bool _chequeado = false;
  bool _activo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        children: [
          _crearSlider(),
          _crearCheckbox(),
          _crearSwitch(),
          _crearImagen()
        ],
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valor,
      label: '$_valor',
      divisions: 10,
      min: 10.0,
      max: 300.0,
      activeColor: Colors.red,
      onChanged: _chequeado || _activo
          ? null
          : (double nuevoValor) {
              _valor = nuevoValor;
              setState(() {});
            },
    );
  }

  Widget _crearImagen() {
    return Image.asset(
      'assets/img/pokeball.png',
      fit: BoxFit.contain,
      width: _valor,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _chequeado,
    //   onChanged: (bool checked) {
    //     _chequeado = checked;
    //     setState(() {});
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _chequeado,
      onChanged: (bool checked) {
        _chequeado = checked;
        setState(() {});
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _activo,
      onChanged: (bool checked) {
        _activo = checked;
        setState(() {});
      },
    );
  }
}
