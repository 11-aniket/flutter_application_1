import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/mobiles.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/models/mobiles.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

 class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

      final  int day = 3;
     final String name ="ANIKET";
     // bool nae = true;
      //double pi = 3.14;
      // num temp = 30; and both 20.44
      // var day = "tuesday" aslo 929; and type vairable decleared
      //const is used for constant values like pi 

  @override
  Widget build(BuildContext context) {
  
   final dummyList = List.generate(20,(index) => catalogModel.products[0]);

    return Scaffold (
      appBar: AppBar(
        title: Text(
          "Catalog App",
        style: TextStyle(
          color: Colors.black,
        ),
         ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
           itemCount: dummyList.length,
           itemBuilder: ( context ,index){
             return ItemWidget(
               products: dummyList[index],
             );
           },
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}