import 'package:flutter/material.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/addition.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/sidebar.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xffFBD3E9),Color(0xffBB377D)]))
          ),
          title:
          Center(child: Text("CALCULATOR")),
        ),
        drawer: Drawerr(),
        body: Add(),
      ),
    );
  }
}
