import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technaureus_task/controller/customer_contrroller.dart';
import 'package:technaureus_task/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:technaureus_task/view/costumer_screen/widgets/bottom_sheet.dart';
import 'package:technaureus_task/view/costumer_screen/widgets/customer_screen_tile.dart';

class CustomerScreen extends StatefulWidget {

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {

  CustomerController customerController=CustomerController();

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future fetchData()async{
    await customerController.getData();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customers',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.menu)
        ],
      ),
      body: Column(
        children: [

          ///search
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(CupertinoIcons.qrcode),
                    IconButton(onPressed: (){
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context, builder: (context) {

                        return Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: ShowBottomSheet(),
                        );
                      },);
                    }, icon: Icon(Icons.add_circle_outlined,color: Colors.indigo[900],))
                  ],
                ),
              ),
            ),
          ),


          Consumer<CustomerController>(
            builder: (context, value, child) {

              if(customerController.isLoading){
                return Center(child: CircularProgressIndicator());
              }else

               return Expanded(
                 child: ListView.builder(
                  itemCount: customerController.modelObj?.data?.length,
                  itemBuilder: (context, index) {
                    //return


                    return CustomerScreenTile(
                        image: Image.network(
                            // customerController.modelObj?.data?[index].profilePic //image not loading, throwing exception.
                            //     .toString() ?? ''
                          'https://media.istockphoto.com/id/1129342452/photo/portrait-of-cheerful-young-manager-handshake-with-new-employee.jpg?s=2048x2048&w=is&k=20&c=AH2VkYE1MAvyXv_Exl1-OmqfNkeaUktLBeeD_IhIRUQ='
                        ),
                        name: customerController.modelObj?.data?[index].name ?? '',
                        id: customerController.modelObj?.data?[index].id.toString() ??
                            '',
                        street: customerController.modelObj?.data?[index].street ??
                            '',
                        streetTwo: customerController.modelObj?.data?[index]
                            .streetTwo ?? '',
                        city: customerController.modelObj?.data?[index].city ?? '',
                        dueAmnt: '₹500');
                  },
                               ),
               );

            }
          ),
        ],
      ),
    );
  }
}
