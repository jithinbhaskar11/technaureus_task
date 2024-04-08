import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technaureus_task/view/costumer_screen/costumer_screen.dart';
import 'package:technaureus_task/view/home_screen/widgets/home_screen_tile.dart';
import 'package:technaureus_task/view/new_order_screen/new_order_screen.dart';
import 'package:technaureus_task/view/product_screen/product_screen.dart';
import 'package:technaureus_task/view/return_order_screen/return_order_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        actions: [const Icon(Icons.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          children: [
            HomeScreenTile(
                tapResult: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomerScreen()));
                },
                icon: Icons.groups,
                title: 'Customers'),
            HomeScreenTile(
                tapResult: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductScreen()));
                },
                icon: FontAwesomeIcons.box,
                title: 'Products'),
            HomeScreenTile(
                tapResult: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewOrderScreen()));
                },
                icon: Icons.add_box_outlined,
                title: 'New Order'),
            HomeScreenTile(
                tapResult: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReturnOrderScreen()));
                },
                icon: Icons.keyboard_return,
                title: 'Return Order'),
            HomeScreenTile(
                tapResult: () {},
                icon: FontAwesomeIcons.coins,
                title: 'Add Payment'),
            HomeScreenTile(
                tapResult: () {}, icon: Icons.task, title: 'Todays Order'),
            HomeScreenTile(
                tapResult: () {},
                icon: Icons.list_alt_outlined,
                title: 'Todays Summary'),
            HomeScreenTile(
                tapResult: () {}, icon: FontAwesomeIcons.route, title: 'Route'),
          ],
        ),
      ),
    );
  }
}
