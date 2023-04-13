import 'package:flutter/material.dart';
import 'package:todoapp/pages/home_page.dart';
import 'package:todoapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/pages/utils/routes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        
        ),
        initialRoute: "/login",
        debugShowCheckedModeBanner: false,
        routes : {
      
          "/" : (context)=>LoginPage(),
          MyRoutes.homeRoute : (context)=>HomePage(),
          MyRoutes.loginRoute :(context)=>LoginPage(),
      
        },
    );
    
  }
}
