import 'package:flutter/material.dart';
import 'package:swiggy_clone/drawer_side.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar:AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
          title: Text("My Profile",
        style:TextStyle(fontSize: 20,color:Colors.black),
      ),),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color:Colors.orangeAccent,
              ),
              Container(
                height: 561,
                  width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15,),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Himanshi Tripathi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                              Text("Ayush Tripathi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                              SizedBox(height: 10),
                              Text("himanshitripathi14@gmail.com")
                            ],
                          ),
                          CircleAvatar(
                            radius:17,
                            // backgroundColor: Colors.orangeAccent,
                            child: CircleAvatar(
                              radius: 15,
                              child: Icon(Icons.edit,color: Colors.orangeAccent
                                ),
                              backgroundColor: Colors.transparent,
                            ),
                          )
                        ],
                      ),
                      ),
                    ],
                  ),
                  listTile(
                    icon:Icons.shop_outlined,
                    title: "My Orders"
                  ),
                  listTile(
                      icon:Icons.location_on_outlined,
                      title: "My Delivery Address"
                  ),
                  listTile(
                      icon:Icons.person_outline,
                      title: "Refer To Friends"
                  ),
                  listTile(
                      icon:Icons.file_copy_outlined,
                      title: "Terms & Conditions"
                  ),
                  listTile(
                      icon:Icons.policy_outlined,
                      title: "Privacy Policies"
                  ),
                  listTile(
                      icon:Icons.add_chart,
                      title: "About"
                  ),
                  listTile(
                      icon:Icons.exit_to_app_outlined,
                      title: "Log Out"
                  ),
                ],),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:40,left: 25,),
            child: CircleAvatar(
              radius: 50,
              backgroundColor:Colors.white,
              child: CircleAvatar(
                backgroundImage:AssetImage("assets/profile1.jpg"),
                radius: 45,
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

