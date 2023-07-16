import 'package:first_project/pages/currency_converter_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
      theme: ThemeData.dark(),
      title: 'Generator haseł',
    );
  }
}
