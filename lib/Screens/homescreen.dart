import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/cart_screen.dart';

import '../widgets/nearby_restuarants.dart';
import '../widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'Home_Screen';

  const HomeScreen({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Food Delivery'),
        actions: [
          const Icon(Icons.account_circle),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.id);
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0.0),
              backgroundColor:
                  MaterialStateProperty.all(Colors.deepOrangeAccent),
            ),
            child: const Text(
              'Cart (4)',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      width: 0.8, color: Theme.of(context).primaryColor),
                ),
                hintText: "Search for food",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.close),
              ),
            ),
          ),
          const RecentOrders(),
          const NearbyRestuarants(),
        ],
      ),
    );
  }
}
