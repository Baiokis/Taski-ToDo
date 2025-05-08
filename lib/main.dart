import 'package:flutter/material.dart';
import 'package:taski/view/model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nav Demo',
      initialRoute: '/',
      routes: {'/': (context) => ModelPage()},
    );
  }
}
