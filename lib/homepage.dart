import 'package:flutter/material.dart';
import 'package:swiggy_clone/drawer_side.dart';
import 'package:swiggy_clone/search.dart';
import 'package:swiggy_clone/view.dart';
    class HomePage extends StatelessWidget {
      const HomePage({Key? key}) : super(key: key);
     Widget singleProducts(){
       return  Container(
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
        backgroundColor: Colors.black87,
         drawer: DrawerSide(),
          appBar:AppBar(
            iconTheme:IconThemeData(color: Colors.black),
            title: Text("Freshly Your's",
              style:TextStyle(
                fontSize: 30,
                color:Colors.white,
              ),
            ),
            actions: [
              CircleAvatar(
                radius:12,
                backgroundColor: Colors.transparent,
                child:IconButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(),
                    ),
                    );
                  },
                  icon:Icon(
                  Icons.search,
                  size:17,
                  color: Colors.black,),
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius:12,
                  backgroundColor: Colors.transparent,
                  child:Icon(Icons.shop,size:17,color: Colors.black,),
                ),
              )
            ],
            backgroundColor: Colors.orangeAccent,
          ),
          body:Padding(
            padding: const EdgeInsets.symmetric(vertical:10,horizontal: 10),
            child: ListView(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image2.jpg')
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex:2,
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:120,bottom: 10,left: 10,top: 5),
                                child: Container(
                                  height: 60,
                                    width:100,

                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(50),
                                    )
                                  ),
                                  child: Text("Freshly Your's!", style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 25,
                                    shadows:[
                                    BoxShadow(color: Colors.lightGreenAccent,
                                    blurRadius: 12,
                                    offset: Offset(3,3)
                                    )
                                  ],),),
                                ),
                              ),
                              Text("Get 30% Off",style:TextStyle(
                                fontSize: 35,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold,
                              ),),
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Text("On your first delivery",style:TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Mr Brown',style: TextStyle(
                        fontSize: 25,
                        fontWeight:FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),),
                      InkWell(
                        onTap:() {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => View()),);
                        },
                        child: Text('View All',style: TextStyle(
                          fontSize: 15,
                          color: Colors.yellowAccent,),
                        ),
                      ),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pizza Hut',style: TextStyle(
                        fontSize: 25,
                        fontWeight:FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),),
                  InkWell(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => View()),);
                    },
                      child:Text('View All',style: TextStyle(
                        fontSize: 15,
                        color: Colors.yellowAccent,),
                      ),
                  ),
                    ],

                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dominos',style: TextStyle(
                        fontSize: 25,
                        fontWeight:FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),),
                  InkWell(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => View()),);
                    },
                    child:
                      Text('View All',style: TextStyle(
                        fontSize: 15,
                        color: Colors.yellowAccent,),
                      ),
                  ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                      singleProducts(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }


