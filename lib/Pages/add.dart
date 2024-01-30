import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final CollectionReference food = FirebaseFirestore.instance.collection('food');
  TextEditingController foodName = TextEditingController();
   TextEditingController foodDescription = TextEditingController();
    TextEditingController foodPrice = TextEditingController();
  void addFood(){
    final data ={'name': foodName.text,'description': foodDescription.text,'price': foodPrice.text,};
    food.add(data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        title: Text("Add food item"),
        backgroundColor: Colors.red,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: foodName,
                decoration:InputDecoration(
                 border: OutlineInputBorder(),
                 label:Text("Food name"),
                ),
                ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: foodDescription,
                decoration:InputDecoration(
                 border: OutlineInputBorder(),
                 label:Text("Description"),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: foodPrice,
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                decoration:InputDecoration(
                 border: OutlineInputBorder(),
                 label:Text("Price"),
                ),
                ),
              ),
             
              ElevatedButton(
                onPressed: (){
                  addFood();
                  Navigator.pushNamed(context, '/cartpage');
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(double.infinity,50),),
              backgroundColor: MaterialStateProperty.all(Colors.red)),
               child: Text("Add item",style: TextStyle(fontSize: 20),),
              ),
          ],
        ),
      ),
    );
  }
}