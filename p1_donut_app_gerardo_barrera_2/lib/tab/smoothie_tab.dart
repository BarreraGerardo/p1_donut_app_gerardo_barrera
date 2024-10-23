import 'package:flutter/material.dart';
import '../utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  final void Function(String itemName, double itemPrice) addItemToCart;

  final List smoothieOnSale = const [
    ["Smoothie Pack 1", 30.0, Colors.green, "lib/images/smoothie_1.png"],
    ["Smoothie Pack 2", 35.0, Colors.cyan, "lib/images/smoothie_2.png"],
    ["Smoothie Pack 3", 40.0, Colors.purple, "lib/images/smoothie_3.png"],
    ["Smoothie Pack 4", 30.0, Colors.yellow, "lib/images/smoothie_4.png"],
    ["Smoothie Pack 1", 30.0, Colors.green, "lib/images/smoothie_1.png"],
    ["Smoothie Pack 2", 35.0, Colors.cyan, "lib/images/smoothie_2.png"],
    ["Smoothie Pack 3", 40.0, Colors.purple, "lib/images/smoothie_3.png"],
    ["Smoothie Pack 4", 30.0, Colors.yellow, "lib/images/smoothie_4.png"],
  ];

  const SmoothieTab({super.key, required this.addItemToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = smoothieOnSale[index][0];
            final itemPrice = smoothieOnSale[index][1];

            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: SmoothieTile(
            smoothieFlavor: smoothieOnSale[index][0],
            smoothiePrice: smoothieOnSale[index][1].toString(),
            smoothieColor: smoothieOnSale[index][2],
            imageName: smoothieOnSale[index][3],
          ),
        );
      },
    );
  }
}
