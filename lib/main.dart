import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
 void main(List<String> args) {
  runApp(myfirstapp());
}

class myfirstapp extends StatelessWidget {
  const myfirstapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner:false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.light,
         primarySwatch: Colors.green,
         fontFamily: GoogleFonts.lato().fontFamily,
         appBarTheme: AppBarTheme(

         )
      ),
      routes: {
         "/" :(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
         MyRoutes.loginRoute :(context) => LoginPage(),
      },
     );
  }
}