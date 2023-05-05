import 'package:flutter/material.dart';
import "package:todoapp/utils/routes.dart";
import 'package:todoapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
