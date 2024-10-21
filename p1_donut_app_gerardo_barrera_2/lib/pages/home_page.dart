import 'package:flutter/material.dart';
import 'package:p1_donut_app_gerardo_barrera_2/utils/my_tab.dart'; // Importa el archivo MyTab

import '../tab/donut_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut tab
    const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donut'),
    // Burger tab
    const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burger'),
    // Smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),
    // Pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),
    // Pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancake'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto "I want to eat"
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text("I want to  ", style: TextStyle(fontSize: 24)),
                  Text("eat:",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
            // TabBar con ajuste de espaciado
            TabBar(
              tabs: myTabs,
              labelPadding: const EdgeInsets.symmetric(vertical: 5.0),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            // Espaciador para evitar superposición
            const SizedBox(height: 10),
            // TabBarView para mostrar las vistas correspondientes
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  const BurgerTab(),
                  const PizzaTab(),
                  const SmoothieTab(),
                  const PancakeTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}