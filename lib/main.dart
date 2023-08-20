import 'package:flutter/material.dart';
import 'Catalogo02.dart';

void main() {
  runApp(const MyApp());
}

//conf do projeto
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.light(), home: const Catalogo02());
  }
}
