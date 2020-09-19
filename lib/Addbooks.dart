import 'package:flutter/material.dart';



class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  var barray=[];
  var barray1=[];
  var  barray2=[];
  TextEditingController bname=TextEditingController();
  TextEditingController bauthor=TextEditingController();
  TextEditingController bprice=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
              child:Column(
                children: [
                  TextField(
                    controller: bname,
                    decoration: InputDecoration(
                        hintText: "Enter the book name",
                        border: OutlineInputBorder()
                    ),
                  ),

                  TextField(
                    controller: bauthor,
                    decoration: InputDecoration(
                        hintText: "Enter the author",
                        border: OutlineInputBorder()
                    ),
                  ),

                  TextField(
                    controller: bauthor,
                    decoration: InputDecoration(
                        hintText: "Enter the price",
                        border: OutlineInputBorder()
                    ),
                  ),

                  RaisedButton(
                    color: Colors.blue,
                    onPressed: (){
                      var b1=bname.text;
                      var b2=bauthor.text;
                      var b3=bprice.text;
                      // print(nwtask);
                      setState(() {
                        barray.add(b1);
                        barray1.add(b2);
                        barray2.add(b3);
                      });

                    },
                    child: Center(child: Text("SUBMIT")),),

                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: barray.length == null? 0: barray.length,
                      itemBuilder: (context,index){
                        return Card(
                          elevation: 10.0,
                          child: ListTile(
                              leading: Icon(Icons.play_for_work),
                              title: Text(barray[index],style: TextStyle(color: Colors.indigoAccent,fontSize: 15.0),),
                              subtitle: Text("Author:"+barray1[index]+"\n"+"Price:"+barray2[index],style: TextStyle(color: Colors.indigo,fontSize: 10.0),),
                              trailing: GestureDetector(
                                  onTap: (){

                                    setState(() {
                                      barray.removeAt(index);
                                    });
                                  },

                                  child: Icon(Icons.delete))),
                        );

                      }),

                ],
              )
          );




  }
}

