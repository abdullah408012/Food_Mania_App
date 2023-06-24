import 'package:flutter/material.dart';
import 'package:food_mania/screens/items_details.dart';
import 'package:food_mania/screens/trending.dart';
import 'package:food_mania/util/categories.dart';
import 'package:food_mania/util/restaurants.dart';
import 'package:food_mania/widgets/category_item.dart';
import 'package:food_mania/widgets/slide_item.dart';
import 'cat_screen.dart';

class Home extends StatelessWidget {
  String img = "assets/burger2.jpg";
  String price="13\$";
  String rating="5.0";
  String name="Grilled Burger";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Food Mania",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 5),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              buildRestaurantRow('Trending Restaurants', context),
              SizedBox(height: 5.0),
              buildRestaurantList(context),
              SizedBox(height: 7.0),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  ItemsDetails(
                    img: img,price: price,rating: rating,name: name,
                  );
                  }
                  ));
                },
                child: Container(height: 170,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                ),
                child: Image(image: AssetImage("assets/banner.jpg"),
                fit: BoxFit.fill,
                ),
                ),
              ),
              SizedBox(height: 7.0),
              buildCategoryRow('Categories', context),
              SizedBox(height: 10.0),
              buildCategoryList(context),
            ],
          ),
        ),
      ),
    );
  }

  buildRestaurantRow(String restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$restaurant",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        ElevatedButton(
          child: Text(
            "See all (9)",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Trending();
                },
              ),
            );
          },
        ),
      ],
    );
  }

  buildCategoryRow(String category, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$category",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        ElevatedButton(
          child: Row(
            children: [
              Text(
                "See Details ",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CatScreen();
            }));
          },
        ),
      ],
    );
  }

  buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories == null ? 0 : categories.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = categories[index];
          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }

  buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants == null ? 0 : restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          Map restaurant = restaurants[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }
}
