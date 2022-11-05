import 'package:flutter/material.dart';
import'package:swiggy_clone/homepage.dart';
class SingleProducts extends StatelessWidget {
  const SingleProducts({Key? key, required this.productImage, required this.productName, required this.onTap}) : super(key: key);
  final String productImage;
  final String productName;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children: [
      Container(
      margin: EdgeInsets.symmetric(horizontal:5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex:2,
            child: Image.asset("assets/cake1.jpg"),
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
                                color:Colors.red,
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
                              Icon(Icons.remove,size: 15,color: Colors.red,),
                              Text("1",style: TextStyle(color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.add,size: 15,color: Colors.red,),
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
    ),
        ],
      )
    );
  }
}
