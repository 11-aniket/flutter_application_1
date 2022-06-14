import 'package:flutter/material.dart';
import 'home_page.dart';
 void main(List<String> args) {
  runApp(myfirstapp());
}

class myfirstapp extends StatelessWidget {
  const myfirstapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: HomePage(),
     );
  }
}