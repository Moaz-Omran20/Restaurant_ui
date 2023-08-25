import 'package:flutter/material.dart';
import 'package:restaurant/restaurant_item.dart';
import 'package:restaurant/treanding_meal_page.dart';
import 'friend_item.dart';
import 'models/friends_model.dart';
import 'models/restaurant_model.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomePage';
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
  List<FriendsModel> friendsList = [
    FriendsModel('assets/images/avatar1.jpeg'),
    FriendsModel('assets/images/avatar2.webp'),
    FriendsModel('assets/images/avatar3.jpg'),
    FriendsModel('assets/images/avatar4.jpg'),
    FriendsModel('assets/images/avatar5.jpeg'),
    FriendsModel('assets/images/avatar6.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 30,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  size: 35,
                  color: Color(0xFF5663FF),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: 10,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined,
                    color: Color(0xFF5663FF), size: 35),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 35,
                  color: Color(0xFF5663FF),
                ),
                label: ""),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF5663FF),
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Find Restaurants",
                      prefixIcon: const Icon(Icons.search),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Text(
                      "Trending Restaurants",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, TrendingMealPage.routeName);
                      },
                      child: const Text(
                        "See all (45)",
                        style:
                            TextStyle(color: Color(0xFF6E7FAA), fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * .3,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return RestaurantItem(restaurantList[index]);
                        },
                        itemCount: restaurantList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    "See all(9)",
                    style: TextStyle(color: Color(0xFF6E7FAA), fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/Italian.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/chinese.png',
                      height: 100,
                    ),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/mexican.png',
                        height: 100,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "See all(20)",
                    style: TextStyle(color: Color(0xFF6E7FAA), fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * .1,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return FriendItem(friendsList[index]);
                        },
                        itemCount: friendsList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
