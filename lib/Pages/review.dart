import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartDisplayPage extends StatefulWidget {
  @override
  _CartDisplayPageState createState() => _CartDisplayPageState();
}

class _CartDisplayPageState extends State<CartDisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Items'),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('cartItems').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          final docs = snapshot.data?.docs; // Handle null snapshot

          if (docs == null || docs.isEmpty) {
            return Center(
              child: Text('No items in cart'),
            );
          }

          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (ctx, index) {
              final cartItem = docs[index].data();
              return ListTile(
                title: Text(cartItem['name']),
                subtitle: Text('Price: \$${cartItem['price']} Quantity: ${cartItem['quantity']}'
                ),
              );
            },
          );
        },
      ),
    );
  }
}
