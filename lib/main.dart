import 'package:flutter/material.dart';
import 'package:technaureus_task/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:technaureus_task/view/home_screen/home_screen.dart';

void main(){
runApp(MyApp());
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
