import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technaureus_task/controller/add_to_cart_controller.dart';
import 'package:technaureus_task/controller/product_controller.dart';
import 'package:technaureus_task/view/product_screen/widgets/product_screen_tile.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  ProductController productController=ProductController();

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future fetchData()async{
    await productController.getData();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded))
        ],
      ),
      body: Consumer<ProductController>(
        builder: (context, value, child) {

          if(productController.isLoading){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else

         return GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: productController.modelObj?.data?.length,
            itemBuilder: (context, index) {
              return ChangeNotifierProvider(
                create: (BuildContext context) => AddToCartController(),
                child: ProductScreenTile(
                  image: Image.network(
                     // productController.modelObj?.data?[index].image ?? '' //image not laoding, throwing exception.
                    'https://media.istockphoto.com/id/495878092/photo/red-apple.jpg?s=2048x2048&w=is&k=20&c=h5O9g4fUlBX1FXpPb6cS7dRdOK8zQ_ykusslGp9C80M='
                  ),
                  name: productController.modelObj?.data?[index].name ?? '',
                  price: productController.modelObj?.data?[index].price
                      .toString() ?? '',
                ),
              );
            },
          );

        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit,color: Colors.white,),backgroundColor: Colors.indigo[900],),
    );
  }
}
