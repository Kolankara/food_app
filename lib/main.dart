
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Pages/Tableselect.dart';
import 'package:food_app/Pages/WelcomePage.dart';
import 'package:food_app/Pages/admin_login_screen.dart';
import 'package:food_app/Widgets/Cartitem.dart';
import 'package:provider/provider.dart';
import 'Pages/Food_items.dart';
import 'Pages/add.dart';
import 'Pages/update.dart';
import 'Pages/HomePage.dart';
import 'Pages/review.dart';
import 'Pages/CartPage.dart';
import 'Pages/Cartscreen.dart';
import 'Pages/Login.dart';
import 'package:flutter/material.dart';
import 'Widgets/Cart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
   runApp(
    ChangeNotifierProvider<Cart>(
      create: (context) => Cart(), // Replace YourDataProvider with your actual provider class
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget{
  get cartItems => 10;

  @override
  Widget build(BuildContext context){
   
    return MaterialApp(
      
       title: "Food App",
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber
       ),
       initialRoute: '/welcome',
       routes: {
              '/welcome':(context) => WelcomePage(),
              '/adminlogin':(context) => AdminLoginScreen(),
              '/tableselect':(context) => TableSelectionPage(),
              '/': (context) => MyWidget(),
              '/add': (context) => AddUser(),
              '/update':(context) => UpdateUser(),
              '/home': (context) => HomePage(),
              '/cartpage':(context) => CartPage(),
               '/cart' : (context) => CartScreen(),
              '/login': (context) => Login(),
              '/review':(context) => CartDisplayPage(),
              
       }
    ); 
}
}