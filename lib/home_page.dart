import 'package:flutter/material.dart';
 

 class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

      final  int day = 199;
     final String name ="Ramuprasad";
     // bool nae = true;
      //double pi = 3.14;
      // num temp = 30; and both 20.44
      // var day = "tuesday" aslo 929; and type vairable decleared
      //const is used for constant values like pi 

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child : Container(
            child: Text("Welcome to $day " + name),
          ),
      ),
      drawer: Drawer(),
    );
  }
}