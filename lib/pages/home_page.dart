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
          child: ListView.builder(
           itemCount: catalogModel.products.length,
           itemBuilder: ( context ,index){
             return ItemWidget(
               products: catalogModel.products[index],
             );
           },
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}