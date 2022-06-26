import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/mobiles.dart';

class ItemWidget extends StatelessWidget {
  
  final Item products;

  const ItemWidget({super.key, required this.products})
  : assert(products != null);

  @override
  Widget build(BuildContext context) {
     return Card(
       child: ListTile(
        onTap: () {
          print("${products.name} pressed");
        },
        leading: Image.network(products.image),
        title: Text(products.name),
        subtitle: Text(products.desc),
        trailing: Text("\$${products.price}",
        textScaleFactor: 1.6,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
        ),
       ),
     );
  }
}