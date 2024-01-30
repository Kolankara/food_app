import 'package:flutter/foundation.dart';

class CartItems {
  final String id;
  final String name;
  final int quantity;
  final double price;

  CartItems({required this.id,required this.name,required this.quantity, required 
  this.price}) ;
}
class Cart with ChangeNotifier{
  Map<String,CartItems> _items = {};

  Map<String,CartItems> get items{
    return {..._items};
    }
    int get itemCount{
         return _items.length;
    }

    void addItem(String id, String name,double price, {required ValueKey<String> key}) {
      if(_items.containsKey(id)) {
        _items.update(id, (existingCartItem) => CartItems(id: DateTime.now().toString(),
         name: existingCartItem.name,  
         quantity: existingCartItem.quantity+1, price: existingCartItem.price));
      }else{
        _items.putIfAbsent(id, () => CartItems(
        id: DateTime.now().toString(),name: name,quantity: 1, price: price));
      }
      notifyListeners();
    }
   void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
   } 

   void removeSingleItem(String id) {
    if (_items.containsKey(id)) {
    if (_items[id]!.quantity > 1) {
      _items.update(id, (existingCartItem) => CartItems(
        id: existingCartItem.id,
        name: existingCartItem.name,
        quantity: existingCartItem.quantity - 1,
        price: existingCartItem.price,
      ));
    } else {
      _items.remove(id);
    }
    notifyListeners();
    }
   }
   void clear(){
    _items ={};
    notifyListeners();
   }
}