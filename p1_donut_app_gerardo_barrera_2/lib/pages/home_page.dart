import 'package:flutter/material.dart';

import '../utils/my_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required ThemeData theme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int totalItems = 0; // Total number of items
  double totalPrice = 0.0; // Total price of the cart

  // Function to add items to the cart
  void addItemToCart(String itemName, double itemPrice) {
    setState(() {
      totalItems++; // Increment the item count
      totalPrice += itemPrice; // Add the item's price
    });
  }

  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png', label: "Donut"),
    const MyTab(iconPath: 'lib/icons/burger.png', label: "Burger"),
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: "Smoothie"),
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: "Pancake"),
    const MyTab(iconPath: 'lib/icons/pizza.png', label: "Pizza"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(addItemToCart: addItemToCart),
                  BurgerTab(addItemToCart: addItemToCart), // Pass function here
                  SmoothieTab(addItemToCart: addItemToCart),
                  PancakeTab(addItemToCart: addItemToCart),
                  PizzaTab(addItemToCart: addItemToCart),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$totalItems Items | \$$totalPrice",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Delivery Charges Included",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action to view the cart
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "View Cart",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
