import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
final CollectionReference food = FirebaseFirestore.instance.collection('food');

 
void deleteFood(docId){
food.doc(docId).delete();
}
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food App"),
        backgroundColor: Colors.red,
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.white,
        child:Icon(Icons.add,size:40,color: Colors.red,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        body: StreamBuilder(
          stream: food.orderBy('name').snapshots(),
          builder:(context,AsyncSnapshot snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder:(context,index) {
                  final DocumentSnapshot foodSnap = snapshot.data.docs[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height:80,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 209, 207, 207),
                            blurRadius: 10,
                          spreadRadius: 15,
                          ),
                        ]
                       ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 30,
                                child:Text(foodSnap['name'])) ,
                              ),
                              ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(foodSnap['name'],style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                              Text(foodSnap['description']),
                              Text(foodSnap['price'],style: TextStyle(fontSize:18),),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){
                                Navigator.pushNamed(context, '/update',
                                arguments: {
                                  'name':foodSnap['name'],
                                  'description':foodSnap['description'],
                                  'price':foodSnap['price'].toString(),
                                  'id':foodSnap.id,
                                }
                                );
                              }, icon: Icon(Icons.edit),iconSize: 30,color: Colors.blue,),
                              IconButton(onPressed: (){
                                deleteFood(foodSnap.id);
                              }, icon: Icon(Icons.delete),iconSize: 30,color: Colors.red,
                              ),
                              
                            ],
                          ),
                        ],
                    ),
                    ),
                  );
                },
                );
            }
            return Container();
          },
          ),
    );
  }
}