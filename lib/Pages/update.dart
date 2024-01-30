import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({super.key});

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  final CollectionReference food = FirebaseFirestore.instance.collection('food');
  TextEditingController foodName = TextEditingController();
   TextEditingController foodDescription = TextEditingController();
    TextEditingController foodPrice = TextEditingController();
    void updateFood(docId){
      final data ={
        'name':foodName.text,
        'description':foodDescription.text,
        'price':foodPrice.text,

      };
      food.doc(docId).update(data).then((value) => Navigator.pop(context));
    }
 @override
  Widget build(BuildContext context) {
    final args =ModalRoute.of(context)!.settings.arguments as Map;
    foodName.text = args['name'];
    foodDescription.text = args['description'];
    foodPrice.text = args['price'];
    final docId = args['id'];
    
    
    return Scaffold(
       appBar:AppBar(
        title: Text("Update food item"),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                decoration:InputDecoration(
                 border: OutlineInputBorder(),
                 label:Text("ImageUrl"),
                ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                updateFood(docId);
                  
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(double.infinity,50),),
              backgroundColor: MaterialStateProperty.all(Colors.red)),
               child: Text("Update item",style: TextStyle(fontSize: 20),),
              ),
          ],
        ),
      ),
    );
  }
}