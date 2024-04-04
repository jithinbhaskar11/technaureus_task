import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technaureus_task/view/home_screen/home_screen_tile.dart';
import 'package:technaureus_task/view/new_order_screen/new_order_screen.dart';
import 'package:technaureus_task/view/product_screen/product_screen.dart';
import 'package:technaureus_task/view/return_order_screen/return_order_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(child: Icon(Icons.person)),
        actions: [
          Icon(Icons.menu)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          children: [
            HomeScreenTile(tapResult: (){}, icon: Icons.groups, title:'Costomers'),
            HomeScreenTile(tapResult: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
            }, icon: FontAwesomeIcons.box, title:'Products'),
            HomeScreenTile(tapResult: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewOrderScreen()));
            }, icon: Icons.add_box_outlined, title:'New Order'),
            HomeScreenTile(tapResult: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReturnOrderScreen()));
            }, icon: Icons.keyboard_return, title:'Return Order'),
            HomeScreenTile(tapResult: (){}, icon: FontAwesomeIcons.coins, title:'Add Payment'),
            HomeScreenTile(tapResult: (){}, icon: Icons.task, title:'Todays Order'),
            HomeScreenTile(tapResult: (){}, icon: Icons.list_alt_outlined, title:'Todays Summary'),
            HomeScreenTile(tapResult: (){}, icon: FontAwesomeIcons.route, title:'Route'),
          ],
        ),
      ),
    );
  }
}
