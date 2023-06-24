import 'package:flutter/material.dart';

class RestaurantDetails extends StatefulWidget {
   final name;
   final address;
   final img;
   final rating;
   RestaurantDetails({Key key, this.name, this.address, this.img, this.rating})
      : super(
          key: key,
           
        );

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [Container(
                height: 300,
                color: Colors.amber,
                child: Image(
                  image: AssetImage(
                    widget.img
                    
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(top:15,left: 20,child: InkWell(onTap: (){Navigator.pop(context);},
                child: Container(height: 30,width: 30,child: Center(child: Icon(Icons.chevron_left)),
                decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(10)),
                ),
              ))
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.address,
                        style: TextStyle(),
                      ),
                      SizedBox(width: 40),
                      Text(
                        "566.6m ",
                      ),
                      Icon(Icons.location_on, size: 17,color: Colors.black54,)
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Delivery time:",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(width: 20),
                      Text("30 mins")
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Rating:",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 20),
                      Text(widget.rating ),
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amberAccent,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: Text("Add to Favourite")),
                    ],
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
