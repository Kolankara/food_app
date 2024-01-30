import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
import 'package:food_app/Widgets/Cart.dart';
import 'package:provider/provider.dart';
import 'package:food_app/Pages/HomePage.dart';
import 'package:food_app/Widgets/Cartitem.dart';

class CartScreen extends StatelessWidget {
  static const routename = '/cart';

   final int? tableNumber;
  final int? numberOfPersons;

  CartScreen({this.tableNumber, this.numberOfPersons});

  Future<void> _storeCartDataInFirestore(List<CartItems> cartItems) async {
    try {
      final firestoreInstance = FirebaseFirestore.instance;

      for (final item in cartItems) {
        await firestoreInstance.collection('cartItems').add({
          'id': item.id,
          'name': item.name,
          'price': item.price,
          'quantity': item.quantity,
        });
      }

      print('Cart data stored in Firestore successfully');
    } catch (error) {
      print('Error storing cart data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My cart',
          style: TextStyle(
            fontSize: 30,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.items.length,
              itemBuilder: (ctx, i) => CartItem(
                cartProvider.items.values.toList()[i].id,
                cartProvider.items.values.toList()[i].name,
                cartProvider.items.values.toList()[i].price,
                cartProvider.items.values.toList()[i].quantity, 
                removeItem: () { 
                   cartProvider.removeSingleItem(cartProvider.items.values.toList()[i].id);
                 },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _storeCartDataInFirestore(cartProvider.items.values.toList());
            },
            child: Text(
              'Checkout',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Text(
          'Table Number: ${tableNumber ?? 'N/A'}, Number of Persons: ${numberOfPersons ?? 'N/A'}',
        ),
        ],
      ),
    );
  }
}
