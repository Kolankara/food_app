import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,

              ),
              accountName: Text("Programmer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
               accountEmail: Text("dearprogrammer@etc.com",style: TextStyle(fontSize: 16,
               ),
              ),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("images/avatar.png"),
              ),
              ),

               ),

          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
              ),
              title: Text("Home",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
          ),
           ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
              ),
              title: Text("My Account",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
          ),
           ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
              ),
              title: Text("Orders",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
          ),
           ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
              ),
              title: Text("Log out",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
          ),
        ],
      ),
    );
  }
}