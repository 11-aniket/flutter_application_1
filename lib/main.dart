import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/theme.dart';
import 'dart:convert';
 void main(List<String> args) {
  runApp(myfirstapp());
}

class myfirstapp extends StatelessWidget {
  const myfirstapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
         "/" :(context) => HomePage(),
        MyRoutes.homeRoute:(context) => HomePage(),
         MyRoutes.loginRoute :(context) => LoginPage(),
      },
     );
  }
}