import 'package:flutter/material.dart';

import 'items_details.dart';
class ShawarmaBuilder extends StatefulWidget {
  const ShawarmaBuilder({Key key}) : super(key: key);

  @override
  State<ShawarmaBuilder> createState() => _ShawarmaBuilderState();
}

class _ShawarmaBuilderState extends State<ShawarmaBuilder> {
  String img="assets/shawarma.jpg";
  String name="Zinger Shawarma";
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
                  }
                  ));
                },
                child: Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(8)),
                        height: 80,
              
                        child: AspectRatio(
                          aspectRatio: 1.3,
                          child: Image.asset(
                            "assets/shawarma.jpg",
                            // shawarmaItems['img'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5.0, top: 7, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Zinger Shawarma",
                              // shawarmaItems['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10)),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("12\$",
                                  // shawarmaItems['price'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10)),
                                Row(
                                  children: [
                                    Text("4.7",
                                      // shawarmaItems['rating'],
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