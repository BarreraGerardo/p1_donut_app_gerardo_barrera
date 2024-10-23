import 'package:flutter/material.dart';
import '../utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final void Function(String itemName, double itemPrice) addItemToCart; // Add this line

  // List of burgers
  final List burgersOnSale = const [
    // [ burgerName, burgerPrice, burgerColor, imageName ]
    ["Burger Pack 1", 10.0, Color.fromARGB(255, 167, 212, 249), "lib/images/Burger_1.png"],
    ["Burger Pack 2", 45.0, Color.fromARGB(255, 255, 159, 152), "lib/images/Burger_2.png"],
    ["Burger Pack 3", 84.0, Color.fromARGB(255, 232, 155, 245), "lib/images/Burger_3.png"],
    ["Burger Pack 4", 95.0, Color.fromARGB(255, 255, 180, 152), "lib/images/Burger_4.png"],
    ["Burger Pack 1", 36.0, Color.fromARGB(255, 137, 202, 255), "lib/images/Burger_1.png"],
    ["Burger Pack 2", 45.0, Color.fromARGB(255, 255, 136, 127), "lib/images/Burger_2.png"],
    ["Burger Pack 3", 84.0, Color.fromARGB(255, 223, 121, 241), "lib/images/Burger_3.png"],
    ["Burger Pack 4", 95.0, Color.fromARGB(255, 255, 180, 152), "lib/images/Burger_4.png"],
  ];

  const BurgerTab({super.key, required this.addItemToCart}); // Pass the function

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = burgersOnSale[index][0];
            final itemPrice = burgersOnSale[index][1];

            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: BurgerTile(
            burgerFlavor: burgersOnSale[index][0],
            burgerPrice: burgersOnSale[index][1].toString(), // Ensure it's a string
            burgerColor: burgersOnSale[index][2],
            imageName: burgersOnSale[index][3],
          ),
        );
      },
    );
  }
}
