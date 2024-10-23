import 'package:flutter/material.dart';
import '../utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  final void Function(String itemName, double itemPrice) addItemToCart;

  final List pizzaOnSale = const [
    ["Pizza Pepperoni", 90.0, Colors.red, "lib/images/pizza_peperoni.png"],
    ["Pizza Combo", 130.0, Colors.amber, "lib/images/pizza_combo.png"],
    ["Pizza Italiana", 99.0, Colors.green, "lib/images/pizza_italiana.png"],
    ["Pizza Aceitunas", 80.0, Colors.grey, "lib/images/pizza_aceitunas.png"],
    ["Pizza Pepperoni", 90.0, Colors.red, "lib/images/pizza_peperoni.png"],
    ["Pizza Combo", 130.0, Colors.amber, "lib/images/pizza_combo.png"],
    ["Pizza Italiana", 99.0, Colors.green, "lib/images/pizza_italiana.png"],
    ["Pizza Aceitunas", 80.0, Colors.grey, "lib/images/pizza_aceitunas.png"],
  ];


  const PizzaTab({super.key, required this.addItemToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = pizzaOnSale[index][0];
            final itemPrice = pizzaOnSale[index][1];

            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: PizzaTile(
            pizzaFlavor: pizzaOnSale[index][0],
            pizzaPrice: pizzaOnSale[index][1].toString(),
            pizzaColor: pizzaOnSale[index][2],
            imageName: pizzaOnSale[index][3],
          ),
        );
      },
    );
  }
}
