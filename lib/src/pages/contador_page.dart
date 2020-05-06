import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle textFontSize = TextStyle( fontSize: 25 );
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de tabs:', style: textFontSize,),
            Text(_counter.toString(), style: textFontSize,)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }

  // Widgets 
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _resetCounter, ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _subCounter, ),
        SizedBox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _addCounter, ),
        SizedBox(width: 30,),
      ],
    );
  }

  // Metods
  void _addCounter() {
    setState(() => _counter++);
  }
  void _subCounter() {
    setState(() => _counter--);
  }
  void _resetCounter() {
    setState(() => _counter = 0);
  }
}