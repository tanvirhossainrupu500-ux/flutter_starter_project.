import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Balance App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drinkwell Balance Checker"),
        ),
        body: Center(
          child: Text(
            "Welcome to Water Balance App",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
