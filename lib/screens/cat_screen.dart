import 'package:flutter/material.dart';
import 'package:food_mania/screens/pizza_builder.dart';
import 'package:food_mania/screens/shawarma_builder.dart';
import 'burgers_builder.dart';
import 'drinks_builder.dart';
import 'fries_builder.dart';
class CatScreen extends StatefulWidget {
  const CatScreen({Key key}) : super(key: key);

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories"),centerTitle: true,
      leading: InkWell(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
                  child: Text(
                    "Burgers",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BurgersBuilder(),
                 SizedBox(height: 15),
                Container(
                  child: Text(
                    "Pizza",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PizzaBuilder(),
                SizedBox(height: 15),
                Container(
                  child: Text(
                    "Shawarma",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ShawarmaBuilder(
                  
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Fries",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FriesBuilder(),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Drinks",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                   
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DrinksBuilder()
          ],),
        ),
      ),
    );

  }
}