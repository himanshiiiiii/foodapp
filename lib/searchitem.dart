import 'package:flutter/material.dart';
// import 'package:swiggy_clone/search.dart';
// import 'package:swiggy_clone/homepage.dart';
class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(child: Container(
            height: 100,
            child: Center(
              child: Image.asset("assets/pastry1.jpg"),
            ),
          ),),
          SizedBox(width: 10,),
          Expanded(child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Column(
                children: [
                  Text("Product Name",style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                  Text("Rs 40/1 piece",style: TextStyle(color: Colors.blue,),),
                ],
              ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child:  Text("1 piece",style: TextStyle(color: Colors.blue,fontSize: 14),),
                      ),
                      Center(
                        child: Icon(Icons.arrow_drop_down,size: 20,
                          color:Colors.blue,),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),),
          Expanded(child: Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 32),
            child:Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: Colors.blue,size: 20,),
                    Text("ADD",style: TextStyle(color: Colors.orangeAccent),),
                  ],
                ),
              ),
            ) ,
          ),),
        ],
      ),
    );
  }
}
