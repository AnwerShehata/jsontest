  import 'package:flutter/material.dart';
  import './HomeApp.dart';



  main() async {
    runApp(MyApp());
  }

  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(

        home: HomeApp(),

      );
    }
  }
