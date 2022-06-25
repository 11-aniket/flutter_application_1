import 'package:flutter/material.dart';
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
         primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      routes: {
         "/" :(context) => LoginPage(),
        "/home" :(context) => HomePage(),
         "/login" :(context) => LoginPage(),
      },
     );
  }
}