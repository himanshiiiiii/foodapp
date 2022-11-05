import 'package:flutter/material.dart';
import 'package:swiggy_clone/drawer_side.dart';
class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Review Cart",style: TextStyle(color: Colors.black,fontSize: 20),),
      ),
      body:ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )
    );
  }
}
