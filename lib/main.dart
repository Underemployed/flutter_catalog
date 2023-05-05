import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/pages/home_page.dart';
import 'package:todoapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:todoapp/utils/routes.dart";
import 'package:todoapp/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final A = Color(0xFF1F2126);
    final B = Color.fromARGB(255, 53, 67, 78);

    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
