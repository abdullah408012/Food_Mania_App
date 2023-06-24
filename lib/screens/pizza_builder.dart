import 'package:flutter/material.dart';
import 'package:food_mania/screens/items_details.dart';
class PizzaBuilder extends StatefulWidget {
  const PizzaBuilder({Key key}) : super(key: key);

  @override
  State<PizzaBuilder> createState() => _PizzaBuilderState();
}

class _PizzaBuilderState extends State<PizzaBuilder> {
   String img="assets/pizza1.jpg";
  String name="Lazania Pizza";
  String rating="15\$";
  String price="4.9";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              elevation: 3,
              child: InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return  ItemsDetails(
                    name: name,price: price,rating: rating,img: img,
                 
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
                           "assets/pizza1.jpg",
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
                            Text("Lazania Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10)),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("15\$",
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