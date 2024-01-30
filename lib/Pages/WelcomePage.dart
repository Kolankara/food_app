import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Image.asset("images/logo.png"),
            ),
          ),
          ),
          Expanded(child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Welcome To Tastee",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),
                ),
                Column(
                  children: [
                    Text("order food efficiently"),
                    Text("and user friendly"),
                  ],
                ),
                Container(
                  width:200,
                  height:45,
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                onPressed:(){
                Navigator.pushNamed(context, "/adminlogin",);
                },
                child: Text("Admin",style:TextStyle(color: Colors.white,),
                
                ),
               ),
                ),
                Container(
                  width:200,
                  height:45,
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                onPressed:(){
                  Navigator.pushNamed(context, "/tableselect",);
                },
                child: Text("User",style:TextStyle(color: Colors.white,),
                ),
               )
                ),
                 Container(
                  width:200,
                  height:45,
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                onPressed:(){
                  Navigator.pushNamed(context, "/login",);
                },
                child: Text("cheff",style:TextStyle(color: Colors.white,),
                ),
               )
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}