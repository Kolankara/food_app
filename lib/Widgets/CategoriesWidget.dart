import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: EdgeInsets.symmetric(
        vertical: 15,
      horizontal: 5
      ),
      child: Row(
        children: [
          //single item
          //for(int i=0;i<10;i++)
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/5fc8c375c78ab.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
           Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/breakfast.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
           Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/meals.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/biriyani.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/northindian.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/porotta.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
           Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/snacks.jpg",
              width: 50,
              height: 50,
            ),
          ),
          ),
           Padding(padding: EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0,3),
                )
              ]
            ),
            child: Image.asset(
              "images/burger.jpg",
              width: 50,
              height: 50,
            ),
          ),
          )
        ],
      ),
      ),

    );
  }
}