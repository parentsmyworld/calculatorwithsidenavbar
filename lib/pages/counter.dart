import 'package:flutter/material.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/sidebar.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter=0;
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
        body: Container(
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xffFBD3E9),Color(0xffBB377D)])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: .5),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent
                  ),
                  child: Center(
                    child: Text(_counter.toString(),
                      style: TextStyle(
                          fontSize: 20.0,

                      ),),
                  ),
                ),
                SizedBox(height: 30.0,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _counter++;
                    });
                  },
                  child: Container(
                    child: Center(child: Text("+",style: TextStyle(
                      fontSize: 30.0,
                    ),)),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: .5,style: BorderStyle.solid),
                        //same effect if we add borderstyle as solid and if we dont mention the style
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent
                    ),
                    height: 60.0,
                    width: 200.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _counter--;
                    });
                  },
                  child: Container(
                    child: Center(child: Text("-",style: TextStyle(
                        fontSize: 40.0
                    ),)),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: .5,style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent
                    ),
                    height: 60.0,
                    width: 200.0,
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
