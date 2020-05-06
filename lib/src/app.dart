import 'package:flutter/material.dart';
import 'package:hello_app/src/pages/contador_page.dart';
import 'package:hello_app/src/pages/home.dart';

class MyApp extends StatelessWidget {
    @override
    Widget build(contex) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          // child: HomeApp(),
          child: ContadorPage(),
          )
      );
    }
}