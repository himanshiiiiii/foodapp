import 'package:flutter/material.dart';
import 'package:swiggy_clone/drawer_side.dart';
import 'package:rating_dialog/rating_dialog.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  void show(){
    showDialog(context: context, builder: (context)
    {
      return RatingDialog(
        starColor: Colors.orangeAccent,
        title: Text("The Rating"),
        submitButtonText: 'SUBMIT', onSubmitted: (rating) { print("rating:$rating"); },
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Rate This App",style: TextStyle(fontSize: 20,color: Colors.black),),
      ),
      body: Container(
        child: Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.orangeAccent),
            onPressed: show,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Show Rating Dialog",style: TextStyle(fontSize: 25,color: Colors.black),),

            ),
          ),
        ),
      ),
    );
  }
}

