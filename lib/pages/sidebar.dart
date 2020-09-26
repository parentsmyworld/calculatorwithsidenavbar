import 'package:flutter/material.dart';
import 'package:flutter_calculatrwidsidenavbar/main.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/Subtraction.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/counter.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/division.dart';
import 'package:flutter_calculatrwidsidenavbar/pages/multiplication.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: [
          DrawerHeader(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "menu",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    //if we are not providing this fit the the image will not get completely fit in the box
                    image: NetworkImage("https://blog.altair.com/wp-content/uploads/2019/01/MainImage.jpg"))),
          ),
//          UserAccountsDrawerHeader(
//
//            currentAccountPicture: CircleAvatar(
//              backgroundColor: Colors.white,
//              child: Text("M",style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.black
//              ),),
//            ),
//              accountName: Text("Manju"),
//              accountEmail: Text("kjuhbgjdfng")),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(MyApp())));
            },
            leading: Text("+",style: TextStyle(fontSize: 30,
                color: Colors.grey),),
            title: Text("Addition"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Sub())));
            },
            leading: Text("-",style: TextStyle(fontSize: 50,
            color: Colors.grey),),
            title: Text("Subtraction"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Mul())));
            },
            leading: Text("*",style: TextStyle(fontSize: 30,
                color: Colors.grey),),
            title: Text("Multiplication"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Div())));
            },
            leading: Text("/",style: TextStyle(fontSize: 30,
    color: Colors.grey)),
            title: Text("Division"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Counter())));
            },
            leading: Icon(Icons.keyboard),
            title: Text("Counter"),
          ),

        ],
      ),
    );
  }
}
