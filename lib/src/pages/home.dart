import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  // Styles Variables :P
  final TextStyle textFontSize = TextStyle( fontSize: 25 ); 
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
            Text('0', style: textFontSize,)
          ],
        ),
      ),
    );
  }

}