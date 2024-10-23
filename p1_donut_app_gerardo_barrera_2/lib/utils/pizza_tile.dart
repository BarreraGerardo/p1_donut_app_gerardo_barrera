import 'package:flutter/material.dart';


class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imageName;

  const PizzaTile({super.key, 
  required this.pizzaFlavor, 
  required this.pizzaPrice, 
  required this.pizzaColor, 
  required this.imageName,});

  @override
  Widget build (BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(color: pizzaColor[50], 
        borderRadius: BorderRadius.circular(24
        )),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Container
          (decoration: BoxDecoration(color:pizzaColor[100],borderRadius: const  BorderRadius.only(
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          )),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8), 
          child:  Text('\$$pizzaPrice', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: pizzaColor[800]),),
         ),],
         ),
         //donut picture

         Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Image.asset(imageName),),

        //donut flavor test

        Text(pizzaFlavor,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        ),
        Text(
          'Pizza´s',
          style:TextStyle(color: Colors.grey[600]) ,
        ),
        
        //love icon + add.button
        Padding(
          padding:const EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //love icon
               Icon(
                Icons.favorite,
                color: Colors.pink[400],
               ),
               //push Button
               Icon(
                Icons.add,
                color: Colors.grey[800],
               )
            ],
          ), )
        ],),
      ),
    );
  }
}