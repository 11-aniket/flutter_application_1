import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

 class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

      final  int day = 3;
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
            child: Text("Welcome $name to $day day of learning ."),
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}