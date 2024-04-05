import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technaureus_task/controller/add_to_cart_controller.dart';
import 'package:technaureus_task/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:technaureus_task/view/product_screen/product_screen_tile.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded))
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ChangeNotifierProvider(
            create: (BuildContext context) =>AddToCartController(),
            child: ProductScreenTile(
                image: Image.network(
                    'https://media.istockphoto.com/id/670941496/photo/apple-groves-sunshine-at-japan.jpg?s=2048x2048&w=is&k=20&c=Ru4IssicsMcoCwDuSEI9j2tyTr4hzL4hq5CYJxhHHOU='),
                name: 'Apple',
                price: '100',
               ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit,color: Colors.white,),backgroundColor: Colors.indigo[900],),
    );
  }
}
