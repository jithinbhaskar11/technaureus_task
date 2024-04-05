import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technaureus_task/view/cart_screen/cart_screen.dart';
import 'package:technaureus_task/view/costumer_screen/costumer_screen.dart';
import 'package:technaureus_task/view/home_screen/home_screen.dart';
import 'package:technaureus_task/view/new_order_screen/new_order_screen.dart';
import 'package:technaureus_task/view/return_order_screen/return_order_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController=PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(4, 2),
              )
            ]),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.indigo[900],
            currentIndex: currentIndex,
            onTap: (tapedIndex) {
              setState(() {
                currentIndex = tapedIndex;
                pageController.animateToPage(tapedIndex, duration: Duration(milliseconds:300 ), curve: Curves.easeOut);
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'New Oreder'),
              BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cartPlus),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.keyboard_return),label: 'Return Order'),
              BottomNavigationBarItem(icon: Icon(Icons.groups),label: 'Customers'),

            ]),
      ),
     body: PageView(
       controller: pageController,
       onPageChanged: (index){
         setState(() {
           currentIndex=index;
         });
       },
       children: [
         HomeScreen(),
         NewOrderScreen(),
         CartScreen(),
         ReturnOrderScreen(),
         CustomerScreen()
       ],
     ),
    );
  }
}
