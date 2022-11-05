import 'package:flutter/material.dart';
class SignIn extends StatelessWidget {
  const SignIn ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit:BoxFit.cover,
            image:AssetImage('assets/bgswig.webp')
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height:400,
              width: double.infinity,
              color:Colors.red,
              child:Column(
                children: [
                  Text("Sign in to continue"),
                  Text('Swiggy',style: TextStyle(fontSize: 50
                  ),)
                ],
              )

            )
          ]
        )
      )
    );
  }
}
