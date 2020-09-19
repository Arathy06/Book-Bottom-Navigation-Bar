import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  var bname=["Wings of fire","Randamuzham","Balyakala Sakhi","Aadujeevitham","Oru Deshathinte Kadha"];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.grey,Colors.white]),
        ),
        child: ListView.builder(
            itemCount: bname.length,
            itemBuilder: (context,index){
              return Card(
                elevation: 10.0,
                child: ListTile(
                  leading: Icon(Icons.book,color: Colors.blue,),
                  trailing: Icon(Icons.delete,color: Colors.red,),
                  title: Text(bname[index],style: TextStyle(color: Colors.green,fontSize: 15.0),),

                ),
              );
            }
        )
    );
  }
}
