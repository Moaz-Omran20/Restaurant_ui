
import 'package:flutter/material.dart';

import 'models/restaurant_model.dart';

class RestaurantItem extends StatelessWidget {


  RestaurantModel restaurantModel;


  RestaurantItem(this.restaurantModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 350,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 15,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 350,
                  color: Colors.green,
                  child: Image.asset(
                    restaurantModel.foodImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        height: 30,
                        width: 50,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Open",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        height: 30,
                        width: 50,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "⭐${restaurantModel.rating}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                   Text(
                    restaurantModel.mealName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFFF5673)),
                    child:  Align(
                      alignment: Alignment.center,
                      child: Text(
                        restaurantModel.foodKind,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF848DFF)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1.2 KM",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    width: 80,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              'assets/images/avatar1.jpeg',
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage(
                                'assets/images/avatar2.webp',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 17,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    'assets/images/avatar4.jpg',
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Text(
                                  "+2",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text(
                    restaurantModel.address,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
