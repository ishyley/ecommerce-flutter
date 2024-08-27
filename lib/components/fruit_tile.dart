import 'package:flutter/material.dart';
import 'package:simple_flutter_ecommerce/model/fruit.dart';
import 'package:simple_flutter_ecommerce/pages/shop_page.dart';


class FruitTile extends StatelessWidget {
  Fruit fruit;
  // void Function()? onTap;
  FruitTile({super.key, required this.fruit, required void Function() onTap, //required this.onTap
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(fruit.imagepath)),

          //description
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              fruit.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //price + detail
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fruit.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('\$${fruit.price}')
                  ],
                ),
                GestureDetector(
                  onTap: () => 
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
