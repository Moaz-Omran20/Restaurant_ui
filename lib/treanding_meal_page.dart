import 'package:flutter/material.dart';
import 'package:restaurant/restaurant_item.dart';

import 'models/restaurant_model.dart';

class TrendingMealPage extends StatelessWidget {
  List<RestaurantModel> restaurantList = [
    RestaurantModel(
        foodImage: "assets/images/item111.png",
        rating: 4.5,
        foodKind: "Italian",
        mealName: 'Happy Bones',
        address: '394 Broome St, New York, NY 10013, USA'),
    RestaurantModel(
        foodImage: "assets/images/food2.png",
        rating: 4.1,
        foodKind: "Frensch",
        mealName: 'Uncle Boons',
        address: '7 Spring St, New York, NY 10012, USA'),
    RestaurantModel(
        foodImage: "assets/images/food3.webp",
        rating: 3.9,
        foodKind: "Spanish",
        mealName: 'Gold Burger',
        address: 'Calle del Gral Oraá 35, esc A, 2º, 4A'),
    RestaurantModel(
        foodImage: "assets/images/food4.png",
        rating: 4.8,
        foodKind: "Uk",
        mealName: 'Spicy Strips',
        address: 'Cavalier Approach, Leeds'),
  ];

  static const String routeName = 'TrendingMealPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Treanding Restaurants",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Find Restaurants",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const ImageIcon(
                    AssetImage('assets/images/filter_icon.png'),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return RestaurantItem(restaurantList[index]);
                },
                itemCount: restaurantList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
