import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/mobiles.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/models/mobiles.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import 'package:flutter/services.dart';

 class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      final  int day = 3;
     final String name ="ANIKET";
    
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  
  loadData()async{
   var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
   var decodedData = jsonDecode(catalogjson);
   var productsdata = decodedData["products"];
   catalogModel.products = List.from(productsdata)
   .map((products) => Item.fromMap(products))
   .toList();
   setState(() {
     
   });
   }

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
          child: GridView.builder(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 15,
            ),
           itemCount:catalogModel.products.length ,
           itemBuilder: (context,index){
            final item = catalogModel.products[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: GridTile(
                header: Container(
                  child: Text(item.name,style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ), 
                ),
                child : Image.network(item.image,),
                footer: Container(
                  child: Text(item.price.toString(), style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ), 
            );
           },
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}