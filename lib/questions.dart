import 'package:flutter/material.dart';
import 'package:swiggy_clone/drawer_side.dart';
class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);
  Widget listTile({ icon, title})
  {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading:Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Frequently Asked Questions",style: TextStyle(fontSize: 20,color: Colors.black),),
      ),
     // Container(
     //   Text("Questions",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
     // ),
    );
  }
}
