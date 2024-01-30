import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_app/Pages/Cartscreen.dart';
import 'package:food_app/Widgets/Cartitem.dart';
import 'package:food_app/Widgets/Cart.dart';
import 'package:provider/provider.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CollectionReference food =
      FirebaseFirestore.instance.collection('food');

  void deleteFood(docId) {
    food.doc(docId).delete();
  }

  Map<String, int> itemCounts = {}; 
  
    // Map to store the item count for each food

  @override
  Widget build(BuildContext context) {
    final cartprovider = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Food App"),
        actions: <Widget>[
        IconButton(onPressed: ()=>Navigator.of(context).pushNamed(CartScreen.routename),
         icon: Icon(Icons.shopping_cart,size:30,),),
        ],
        backgroundColor: Colors.red,
      ),
      body: StreamBuilder(
        stream: food.orderBy('name').snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot foodSnap = snapshot.data.docs[index];
                final foodId = foodSnap.id;

                // Get the item count for the current food
                final itemCount = itemCounts.containsKey(foodId)
                    ? itemCounts[foodId]
                    : 0;

                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 30,
                                  child: Text(foodSnap['name']),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        foodSnap['name'],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(foodSnap['description']),
                                      Text(
                                        foodSnap['price'].toString(),
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // Decrement item count
                                    setState(() {
                                      if (itemCount! > 0) {
                                        itemCounts[foodId] = itemCount - 1;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                ),
                                Text(itemCount.toString()),
                                IconButton(
                                  onPressed: () {
                                    // Increment item count
                                    setState(() {
                                      itemCounts[foodId] = (itemCount! + 1);
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: (){
                                     double price = double.parse(foodSnap['price']);
                                    cartprovider.addItem(foodSnap['id'],foodSnap['name'],price,key: ValueKey(foodId),);
                                    print('Order Now: ${foodSnap['name']}');
                                  },
                                  child: Text('Order Now'),
                                ),
                              ],
                            ),
                          ],
                        ),
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
 
