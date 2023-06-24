import 'package:flutter/material.dart';
import 'package:food_mania/screens/items_details.dart';

class BurgersBuilder extends StatefulWidget {
  const BurgersBuilder({Key key}) : super(key: key);

  @override
  State<BurgersBuilder> createState() => _BurgersBuilderState();
}

class _BurgersBuilderState extends State<BurgersBuilder> {
  String img="assets/burger1.jpg";
  String name="Chicken Burger";
  String rating="10\$";
  String price="4.9";
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
                    name: name,price: price,img: img,rating: rating,
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
                            "assets/burger1.jpg",
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
                            Text("Chicken Burger",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10)),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("10\$",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10)),
                                Row(
                                  children: [
                                    Text("4.9",
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