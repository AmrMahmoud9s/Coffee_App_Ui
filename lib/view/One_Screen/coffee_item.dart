import 'package:flutter/material.dart';
import 'package:flutter_application_201/view/One_Screen/coffee1.dart';
import 'package:flutter_application_201/view/Two_Scereen/prodect.dart';

// ignore: must_be_immutable
class CoffeeItem extends StatefulWidget {
  CoffeeItem({super.key});

  @override
  State<CoffeeItem> createState() => _CoffeeItemState();
}

class _CoffeeItemState extends State<CoffeeItem> {
  int _volume = 0;
  void plus() {
    _volume++;
    setState(() {});
  }

  void mines() {
    _volume--;
    setState(() {});
  }

  List<coffee1> items = [
    coffee1(
        image: 'images/Espresso.png',
        name: "Espresso",
        discrpotion: "fav",
        price: 50.20),
    coffee1(
        image: 'images/Black Coffee.png',
        name: "Black Coffee",
        discrpotion: "fav",
        price: 40.50),
    coffee1(
        image: 'images/Latte.png',
        name: "latte",
        discrpotion: "fav",
        price: 100.25),
    coffee1(
        image: 'images/Cold Coffee.png',
        name: "cold",
        discrpotion: "best",
        price: 70.38),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(
        items.length,
        ((index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Product(
                        model: items[index],
                      ),
                    ));
              },
              child: Container(
                // width: 100,
                // height: 50,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        items[index].image,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        items[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        items[index].discrpotion,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items[index].price.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    _volume += 1;
                                    _volume -= 1;
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
