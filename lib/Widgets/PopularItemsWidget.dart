import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 5),
            child: Row(
              children: [
                // single item
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/burger.jpg",
                              height: 130,

                            ),
                          ),
                          Text("Hot Burger",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Taste Our Hot Burger",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/porotta.jpg",
                              height: 130,

                            ),
                          ),
                          Text("porotta and beef",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Hot spicy porotta beef",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/mysoredosa.jfif",
                              height: 130,

                            ),
                          ),
                          Text("Mysore Dosa",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Mumbai style dosa",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/butterchicken.jfif",
                              height: 130,

                            ),
                          ),
                          Text("Butter Chicken",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Taste butter chicken",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/dragonpaneer.jpg",
                              height: 130,

                            ),
                          ),
                          Text("Dragon Paneer",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Taste dragon paneer",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/rotinaan.png",
                              height: 130,

                            ),
                          ),
                          Text("Roti and Naan",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Crispy roti and naan",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/Mojito.jpg",
                              height: 130,

                            ),
                          ),
                          Text("Mojito",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("drink tasty mojito",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 7,),
                  child: Container(
                    width: 170,
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/biriyani.jpg",
                              height: 130,

                            ),
                          ),
                          Text("Mutton biriyani",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 4,),
                            Text("Taste hot Biriyani",
                          style: TextStyle(fontSize: 15,//fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$10",style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                              )
                            ],
                          ),
                        ],
                      ),
                       ),
                  ),
                )
              ],
            ),
            ),
    );
  }
}