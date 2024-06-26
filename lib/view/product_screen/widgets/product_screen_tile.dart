import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technaureus_task/controller/add_to_cart_controller.dart';

class ProductScreenTile extends StatelessWidget {
  //final Image image;
  final String imageUrl;
  final String name;
  final String price;

  ProductScreenTile({
    //required this.image,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  bool showAddbutton = true;

  @override
  Widget build(BuildContext context) {
    var addToCartProvider = Provider.of<AddToCartController>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(4, 2),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: double.infinity, vertical: 60),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      // image:image.image,fit: BoxFit.cover
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
            ),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(price),
                //SizedBox(width: 50,),
                Container(
                  height: 24,
                  width: 1,
                  color: Colors.grey,
                ),
                // SizedBox(width: 20,),
                // showAddbutton?
                addToCartProvider.products.showAddButton
                    ? GestureDetector(
                        onTap: () {
                          // setState(() {
                          //   showAddbutton=false;
                          // });
                          addToCartProvider.toggleAddButton();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.indigo[900],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    : Container(
                        // padding: EdgeInsets.symmetric(horizontal:10),
                        height: 40,
                        // width: 120,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 1,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () {
                                  addToCartProvider.removeButton();
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 10,
                                  color: Colors.white,
                                )),
                            Text(
                              addToCartProvider.products.count.toString(),
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.white),
                            ),
                            IconButton(
                                onPressed: () {
                                  addToCartProvider.plusButton();
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 10,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
