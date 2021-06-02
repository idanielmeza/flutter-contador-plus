import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Daniel Ledezma'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numero de taps : ',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                _conteo = 0;
              });
            },
            child: Icon(Icons.exposure_zero_sharp)),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                if (_conteo > 0) {
                  _conteo--;
                }
              });
            },
            child: Icon(Icons.remove)),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                _conteo++;
              });
            },
            child: Icon(Icons.add)),
      ],
    );
  }
}
