import 'package:flutter/material.dart';
import 'package:p1_donut_app_gerardo_barrera_2/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(
      ),
      )
    ;
  }
}
