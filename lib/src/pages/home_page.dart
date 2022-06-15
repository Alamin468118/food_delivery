import 'package:flutter/material.dart';
import 'package:food_delivery/src/data/food_data.dart';
import 'package:food_delivery/src/models/foodModel.dart';

import '../widget/food_bought.dart';
import '../widget/food_category.dart';
import '../widget/home_top_widget.dart';
import '../widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        children: [
          HomeTopWidget(),
          FoodCategory(),
          SizedBox(
            height: 15.0,
          ),
          SearchBar(),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Text(
                "Frequently Bought Food",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: foods.map(buildFoodBought).toList(),
          ),
        ],
      ),
    );
  }
  Widget buildFoodBought(FoodData food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        imagePath: food.imagePath,
        id: food.id,
        name: food.name,
        price: food.price,
        discount: food.discount,
        ratings: food.ratings,
        category: food.category,
      ),
    );
  }

}


