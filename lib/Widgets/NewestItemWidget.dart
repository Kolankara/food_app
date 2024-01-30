import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
       child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
       child: Column(
        children: [
          // single item
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/pizza.jpg",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Hot Pizza",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Taste our hot pizza",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_) => Icon(Icons.star,
                        color: Colors.red,
                        ),
                         onRatingUpdate: (index){},
                         ),
                         Text("\$10",style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.favorite_border,
                           color: Colors.red,
                           size: 26,
                           ),
                          

                          ],
                         ),
                         ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/burger.jpg",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Hot Burger",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Taste our hot burger",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_) => Icon(Icons.star,
                        color: Colors.red,
                        ),
                         onRatingUpdate: (index){},
                         ),
                         Text("\$10",style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.favorite_border,
                           color: Colors.red,
                           size: 26,
                           ),
                          

                          ],
                         ),
                         ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/Mojito.jpg",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Cool Mojito",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Drink cool mojito",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_) => Icon(Icons.star,
                        color: Colors.red,
                        ),
                         onRatingUpdate: (index){},
                         ),
                         Text("\$10",style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.favorite_border,
                           color: Colors.red,
                           size: 26,
                           ),
                          

                          ],
                         ),
                         ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/biriyani.jpg",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Chicken Biriyani",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Taste our chicken biriyani",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_) => Icon(Icons.star,
                        color: Colors.red,
                        ),
                         onRatingUpdate: (index){},
                         ),
                         Text("\$10",style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.favorite_border,
                           color: Colors.red,
                           size: 26,
                           ),
                          

                          ],
                         ),
                         ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/mysoredosa.jfif",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Mysore Dosa",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Taste our mysore dosa",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_) => Icon(Icons.star,
                        color: Colors.red,
                        ),
                         onRatingUpdate: (index){},
                         ),
                         Text("\$10",style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.favorite_border,
                           color: Colors.red,
                           size: 26,
                           ),
                          

                          ],
                         ),
                         ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ]
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/snacks.jpg",
                      height: 120,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Hot Vada",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Taste our hot vada",
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 18,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context,_) => Icon(Icons.star,
                        color: Colors.red,
                        ),
                         onRatingUpdate: (index){},
                         ),
                         Text("\$10",style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                         ),
                         ),
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Icon(Icons.favorite_border,
                           color: Colors.red,
                           size: 26,
                           ),
                          

                          ],
                         ),
                         ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
       ),
       ),

    );
  }
}