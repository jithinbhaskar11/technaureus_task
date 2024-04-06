import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technaureus_task/controller/add_to_cart_controller.dart';
import 'package:technaureus_task/controller/customer_contrroller.dart';
import 'package:technaureus_task/controller/product_controller.dart';
import 'package:technaureus_task/view/bottom_navigation_bar/bottom_navigation_bar.dart';


void main(){
runApp(
    // ChangeNotifierProvider(create: (BuildContext context) =>AddToCartController(),
    // child: MyApp())
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AddToCartController(),),
    ChangeNotifierProvider(create: (context) => ProductController(),),
    ChangeNotifierProvider(create: (context) => CustomerController(),),
  ],
    child: MyApp(),

  )
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}
