import 'package:flutter/material.dart';
import 'package:flutterbotnavbar/Addbooks.dart';
import 'package:flutterbotnavbar/Authorlist.dart';
import 'package:flutterbotnavbar/Booklist.dart';
import 'package:flutterbotnavbar/Pricelist.dart';

class Bott extends StatefulWidget {
  @override
  _BottState createState() => _BottState();
}

class _BottState extends State<Bott> {
  var pages=[Book(),BookList(),Author(),Price()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body:pages[_myindex],

        
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _myindex=index;
            });

          },
            currentIndex: _myindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          iconSize: 20.0,
          items:[
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.attach_money),
            //     title: Text("Price")
            // ),
               BottomNavigationBarItem(
                 // backgroundColor: Colors.amberAccent,
                   icon: Icon(Icons.add),
                   title: Text("Add Books")
               ),
            BottomNavigationBarItem(
              // backgroundColor: Colors.blue,
                icon: Icon(Icons.bookmark),
                 title: Text("Name")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Author")
            ),
            BottomNavigationBarItem(
                 icon: Icon(Icons.attach_money),
                title: Text("Price")
            ),
          //
          //
          //
          ]
        ),
      ),
      );

    
  }
}
