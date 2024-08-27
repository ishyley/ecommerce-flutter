// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_flutter_ecommerce/model/cart.dart';
import 'package:simple_flutter_ecommerce/model/fruit.dart';

import '../components/fruit_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}



class _ShopPageState extends State<ShopPage> {

  void addFruitsToCart(Fruit fruit){
    Provider.of(context, listen: false).addItemToCart(fruit);

    //alert user
    showDialog(context: context, builder: (context) => AlertDialog(title: Text('Successfully added!'), content: Text('Successfully added!') ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Fruits gives you the best nutrients',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Hot Pick🔥',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 50,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Fruit fruit = value.getFruitList()[index];

                return FruitTile(fruit: fruit,
                onTap: () => addFruitsToCart(fruit),);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}
