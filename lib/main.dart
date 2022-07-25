import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/cart_screen.dart';
import 'Screens/homescreen.dart';
import 'Screens/restaurants_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[50],
          primaryColor: Colors.deepOrangeAccent),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        RestaurantsScreen.id: (context) => const RestaurantsScreen(),
        CartScreen.id: (context) => const CartScreen(),
      },
    );
  }
}
