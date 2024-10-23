import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakePrice;
  final dynamic pancakeColor;
  final String imageName;

  const PancakeTile({super.key,  // Corregido a PancakeTile
    required this.pancakeFlavor, 
    required this.pancakePrice, 
    required this.pancakeColor, 
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[50], 
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: pancakeColor[100],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8), 
                child: Text(
                  '\$$pancakePrice', 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: pancakeColor[800],
                  ),
                ),
              ),
            ],
          ),
          // Imagen del pancake
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Image.asset(imageName),
          ),
          // Nombre del pancake
          Text(
            pancakeFlavor,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Pancake´s',
            style: TextStyle(color: Colors.grey[600]),
          ),
          // Icono de amor + botón de agregar
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icono de amor
                Icon(
                  Icons.favorite,
                  color: Colors.red[900],
                ),
                // Botón de agregar
                Icon(
                  Icons.add,
                  color: Colors.grey[800],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
