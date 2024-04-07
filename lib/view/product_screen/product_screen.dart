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
        title: Text('Nesto Hypermarket',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.menu)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.qr_code,color: Colors.grey,),
                   SizedBox(width: 5,),
                   Container(
                     height: 20,
                     width: 1,
                     color: Colors.black,
                   ),
                    SizedBox(width: 5,),
                    Text('Fruits',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    Icon(Icons.keyboard_arrow_down,color: Colors.grey,)
                    //VerticalDivider(thickness: 2,width: 10,)
                  ],
                )
              ),
              
            ),
          ),
          
          Consumer<ProductController>(
            builder: (context, value, child) {

              if(productController.isLoading){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }else

             return Expanded(
               child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: productController.modelObj?.data?.length,
                  itemBuilder: (context, index) {
                    return ChangeNotifierProvider(
                      create: (BuildContext context) => AddToCartController(),
                      child: ProductScreenTile(
                        imageUrl: 'https://media.istockphoto.com/id/185071735/photo/red-apple-with-droplet.jpg?s=2048x2048&w=is&k=20&c=AiO32-xKn5DXk5ZU7tQjOAtvRAqV1pZ2uofvMbJLGgE=',
                        // imageUrl: productController.modelObj?.data?[index].image??'',
                        name: productController.modelObj?.data?[index].name ?? '',
                        price: productController.modelObj?.data?[index].price
                            .toString() ?? '',
                      ),
                    );
                  },
                ),
             );

            }
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit,color: Colors.white,),backgroundColor: Colors.indigo[900],),
    );
  }
}
