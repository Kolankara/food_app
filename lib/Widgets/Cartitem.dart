
import 'package:food_app/Widgets/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartItem extends StatelessWidget{
  final String id;

  final String name;
  final double price;
  final int quantity;

  CartItem(this.id,this.name,this.price,this.quantity, {required Null Function() removeItem});
  @override
  Widget build(BuildContext context)
{
  return Dismissible(
    key: ValueKey(id),
    direction: DismissDirection.endToStart,
    background: Container(
      color: Colors.red,
    ),
    onDismissed: (direction){
      Provider.of<Cart>(context).removeItem(id);
    },
    child: Card(
      child:ListTile(
        leading:CircleAvatar(
          child: FittedBox(child: Text('\$$price'),),
        ),
        title: Text(name),
        subtitle: Text('Total: \$${(price*quantity)}'),
        trailing: Text('$quantity x'),
      ),
    ),
  );
}
}