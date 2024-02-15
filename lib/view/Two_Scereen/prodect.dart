import 'package:flutter/material.dart';
import 'package:flutter_application_201/view/One_Screen/coffee1.dart';

class Product extends StatefulWidget {
  Product({required this.model, super.key});

  coffee1 model;
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Color? favoriteColor;
  bool isFav = false;
  int numCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.model.image,
                width: 300,
                height: 300,
              ),
            ),
            Text(
              widget.model.name,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            numCount--;
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      Text('${numCount}'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            numCount++;
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$${widget.model.price}",
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Text('Add To Card'),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFav = !isFav;
                        isFav
                            ? favoriteColor = Colors.orange
                            : favoriteColor = Colors.white;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: favoriteColor,
                    ),
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
