import 'package:flutter/material.dart';

import '../util/categories_items.dart';
import 'items_details.dart';
class FriesBuilder extends StatefulWidget {
  const FriesBuilder({Key key}) : super(key: key);

  @override
  State<FriesBuilder> createState() => _FriesBuilderState();
}

class _FriesBuilderState extends State<FriesBuilder> {
  String img="assets/fries.jpg";
  String name="Half Fries";
  String rating="12\$";
  String price="4.7";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          Map friesItems= fries[index];
          return Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              elevation: 3,
              child: InkWell(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  ItemsDetails(
                    img: img,price: price,rating: rating,name: name,
                  );
                  }));
                },
                child: Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
              
                        child: AspectRatio(
                          aspectRatio: 1.3,
                          child: Image.asset(
                           "assets/fries.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5.0, top: 7, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Half Fries",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10)),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("12\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10)),
                                Row(
                                  children: [
                                    Text("4.7",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10)),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: Colors.amberAccent,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}