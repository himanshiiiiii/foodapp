import 'package:flutter/material.dart';
// import 'package:swiggy_clone/homepage.dart';
import 'package:swiggy_clone/searchitem.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Search Here",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orangeAccent,
        actions: [
          Icon(Icons.menu_rounded),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white30,
                filled: true,
                hintText: "Search for the items in the store",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
          SearchItem(),
        ],
      ),
    );
  }
}
