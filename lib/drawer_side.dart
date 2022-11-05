import 'package:flutter/material.dart';
import 'package:swiggy_clone/homepage.dart';
import 'package:swiggy_clone/myprofile.dart';
import 'package:swiggy_clone/questions.dart';
import 'package:swiggy_clone/reviewcart.dart';
import 'package:swiggy_clone/rating.dart';


class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);
  Widget listTile({icon,title,onTap}){
    return ListTile(
      onTap:onTap,
      leading:Icon(icon,size: 32,
      ),
      title: Text(title,style: TextStyle(color: Colors.orangeAccent),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:Container(
        color: Colors.blueGrey,
        child: ListView(
        children: [
        DrawerHeader(child: Row(children: [
        CircleAvatar(
        backgroundColor: Colors.white54,
        radius: 50,
        child:CircleAvatar(
          backgroundImage: AssetImage("assets/profile1.jpg"),
        radius: 45,
        backgroundColor: Colors.redAccent,
    ),
    ),
    // SizedBox(
    //   width: 10,
    // ),
    Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children: [
    Text("Welcome! Have your meal:)"),
    SizedBox(
    height: 7,
    ),
    Container(
    height: 30,
    child: OutlinedButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.orangeAccent),),
    style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: BorderSide(
    width: 2,
    )
    ),),
    ),
    ),
    ],
    ),
    ],),),
    listTile(
    icon: Icons.home_outlined,
    title: "Home",
    onTap:(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage(),),);
    }
    ),
    listTile(
    icon: Icons.shop_outlined,
    title: "Review Cart",
    onTap:() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ReviewCart(),),);
    }
    ),

    listTile(
    icon: Icons.person_outlined,
    title: "My Profile",
    onTap:(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyProfile(),),);
    }
    ),
    listTile(
    icon: Icons.notifications_outlined,
    title: "Notification"
    ),
    listTile(
    icon: Icons.star_outlined,
    title: "Rating and Reviews",
    onTap:() {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Rating(),),);
    }
    ),
    listTile(
    icon: Icons.favorite_outlined,
    title: "Wishlist"
    ),
    listTile(
    icon: Icons.copy_outlined,
    title: "Raise a query"
    ),
    listTile(
    icon: Icons.format_quote_outlined,
    title: "FAQs",
        onTap:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Questions(),),);
        }
    ),
    Container(
    height: 350,
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
    Text("Contact Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
    SizedBox(
    height: 10,
    ),
    Row(
    children: [
    Text("Call Us:"),
    Text("+91-9336744005,+91-9026192004"),
    ],
    ),
    SizedBox(
    height: 10,
    ),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    Text("Mail Us:"),
    SizedBox(
    width: 10,
    ),
    Text("himanshitripathi14@gmail.com"),
    ],
    ),
    ),
    ],
    )
    )
    ],
    ),
    ),
    );
  }
}
