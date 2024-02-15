
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<bool> isselected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelColor: Colors.orange,
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.orange,
      tabs: <Widget>[
        Center(
          child: Text("Hot Coffee"),
        ),
        Center(
          child: Text("Cold Coffee"),
        ),
        Center(
          child: Text("Cappuiccion"),
        ),
      ],
    );
     


   
  }
}









































 // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 25),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       InkWell(
    //           onTap: () {
    //             for (var element in isselected) {
    //               element = false;

    //             }

    //             isselected[0] = true;

    //             setState(() {});

    //           },
    //           child: Text(
    //             "Hot Coffee",
    //             style: TextStyle(
    //                 color: isselected[0] ? Colors.orange : Colors.white),
    //           )

    //           ),
    //       InkWell(
    //           onTap: () {
    //             for (var element in isselected) {
    //               element = false;
    //             }
    //             log(isselected[0].toString());
    //             isselected[1] = true;
    //             setState(() {});
    //           },
    //           child: Text("Cold Coffee")),
    //       InkWell(
    //           onTap: () {
    //             for (var element in isselected) {
    //               element = false;
    //             }
    //             isselected[2] = true;
    //             setState(() {});
    //           },
    //           child: Text("Cappuiccion")),
    //     ],
    //   ),
    // );