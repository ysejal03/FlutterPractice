import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pillreminder2/home_page.dart';
import 'package:pillreminder2/utils/routes.dart';

import 'LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme:GoogleFonts.latoTextTheme(),
      ),

      routes: {
       "/": (context) => HomePage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),

      },
    );
  }

}
