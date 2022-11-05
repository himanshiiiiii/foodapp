import 'package:flutter/material.dart';
import 'package:swiggy_clone/homepage.dart';
class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);
Widget Open(){
  return  Container(
    padding: EdgeInsets.all(3),
  margin: EdgeInsets.symmetric(horizontal:5),
  height: 230,
  width: 180,
  decoration: BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.black,width:3),
  borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Expanded(
  flex:2,
  child: Image.asset("assets/pastry2.jpg"),
  ),
  Expanded(child: Container(
  child:Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10,
  vertical: 5
  ),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:[
  Text('Chocolate Cake',style: TextStyle(
  color: Colors.black,
  // fontSize: 10,
  fontWeight: FontWeight.bold,
  ),),
  Text('Rs.250/500 gram',style: TextStyle(
  color: Colors.blueGrey,
  // fontSize: 10,
  fontWeight: FontWeight.bold,
  ),),
  Row(
  children: [
  Expanded(child: Container(
  padding: EdgeInsets.only(left:5),
  height: 30,
  width: 50,

  decoration: BoxDecoration(
  border: Border.all(color:Colors.black),
  borderRadius: BorderRadius.circular(10),
  ),
  child:Row(
  children: [
  Expanded(child: Text("250 grams",style: TextStyle(fontSize: 10),
  ),),
  Center(
  child:Icon(
  Icons.arrow_drop_down,
  size:20,
  color:Colors.blue,
  ),
  )
  ],
  ),
  ),
  ),
  SizedBox(width: 5,),
  Expanded(child: Container(
  height: 30,
  width: 50,
  decoration: BoxDecoration(
  border: Border.all(color:Colors.black),
  borderRadius: BorderRadius.circular(8),
  ),
  child:Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Icon(Icons.remove,size: 15,color: Colors.orangeAccent,),
  Text("1",style: TextStyle(color: Colors.orangeAccent,
  fontWeight: FontWeight.bold,
  ),
  ),
  Icon(Icons.add,size: 15,color: Colors.orangeAccent,),
  ],
  )
  ),
  ),
  ],
  ),
  ],
  ),
  ),
  ),
  ),
  ],
  ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("All Products"),
      ),

    body:ListView(children: [
  SingleChildScrollView(

      child: Column(
      children: [
      Open(),
        Open(),
        Open(),Open(),Open(),
      Open(),
      ],
      ),
      ),
    ],),
    );
  }
}
