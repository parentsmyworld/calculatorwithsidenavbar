import 'package:flutter/material.dart';
class AppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        centerTitle: true,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffFBD3E9),Color(0xffBB377D)]))
        ),
        title:
        Text("CALCULATOR"),
      );
  }
}
