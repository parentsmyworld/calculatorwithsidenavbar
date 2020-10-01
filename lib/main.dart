import 'package:flutter/material.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/addition.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/appbar.dart';

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
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: SafeArea(
                child: AppBarr())),

        //safearea is to maintain the status bar from getting overlapped with appbar
        drawer: Drawerr(),
        body: Add(),
      ),
    );
  }
}
