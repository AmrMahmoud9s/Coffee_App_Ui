import 'package:flutter/material.dart';
import 'package:flutter_application_201/view/One_Screen/botton_bar.dart';
import 'package:flutter_application_201/view/One_Screen/coffee_item.dart';
import 'package:flutter_application_201/view/One_Screen/search_textfield.dart';

import 'view/One_Screen/custom_tabbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: body(),
          backgroundColor: Colors.black87,
          appBar: PreferredSize(
            preferredSize: const Size(100, 250),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 30,
                      child: Column(
                        children: [
                          Divider(
                            height: 5,
                            color: Colors.orange,
                            thickness: 2,
                          ),
                          Divider(
                            height: 5,
                            color: Colors.orange,
                            endIndent: 10,
                            thickness: 2,
                          ),
                          Divider(
                            height: 5,
                            color: Colors.orange,
                            endIndent: 20,
                            thickness: 2,
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Its a Gread Day For Coffee",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              const SearchTextField(),
              const SizedBox(
                height: 10,
              ),
              CustomTabBar(),
            ]),
          ),
          body: CoffeeItem(),
        ));
  }
}
