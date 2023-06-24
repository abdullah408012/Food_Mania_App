import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final name;
  final price;
  final img;
  final rating;

  ItemsDetails({Key key, this.name, this.price, this.img, this.rating})
      : super(
          key: key,
        );
  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
    int num = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 300,
                color: Colors.amber,
                child: AspectRatio(
                  aspectRatio: 2.2,
                  child: Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 15,
                  left: 20,
                  child: InkWell(
                    onTap: () {
                       if (context != null) {
                        Navigator.pop(context);
                      };
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Center(child: Icon(Icons.chevron_left)),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ))
            ]),
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
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(widget.price,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(width: 20),
                      Text(widget.rating),
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amberAccent,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          num++;
                          setState(() {
                            
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(5)),
                          height: 27,
                          width: 27,
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$num',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: (){
                          num>=2?num--:num;
                          setState(() {
                            
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(5)),
                          height: 27,
                          width: 27,
                          child: Center(
                              child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 20,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: Text("Order Now")),
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
