import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/order.dart';
import '../models/restuarent.dart';

class RestaurantsScreen extends StatefulWidget {
  static const String id = "Restaurant Screen";
  final Restaurant? restaurant;

  const RestaurantsScreen({Key? key, this.restaurant}) : super(key: key);

  @override
  RestaurantsScreenState createState() => RestaurantsScreenState();
}

class RestaurantsScreenState extends State<RestaurantsScreen> {
  _buildMenuitem(Order menuitem) {
    return Center(
        child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 175.0,
          width: 175.0,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/pancakes.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          height: 175.0,
          width: 175.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.1),
                Colors.black87.withOpacity(0.1),
                Colors.black54.withOpacity(0.1),
                Colors.black38.withOpacity(0.1),
              ],
              stops: const [0.1, 0.4, 0.6, 0.9],
            ),
          ),
        ),
        Positioned(
          bottom: 65.0,
          child: Column(
            children: const [
              Text(
                'Pancakes',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
              Text(
                '399 RS.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: FloatingActionButton(
            heroTag: null,
            elevation: 0.4,
            onPressed: () {},
            backgroundColor: Colors.deepOrangeAccent,
            child: const Icon(Icons.add),
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 220.0,
                width: MediaQuery.of(context).size.width,
                image: const AssetImage('assets/images/restaurant3.jpg'),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                      iconSize: 30.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.deepOrangeAccent,
                      ),
                      iconSize: 35.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Pearl Continental',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 17.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                const Text('👏👏👏👏👏'),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  'Main Street Islamabad',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent)),
                child: const Text(
                  'Reviews',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent)),
                child: const Text(
                  'Contact',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Center(
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(5, (index) {
                Order order = currentUser.cart[index];
                return _buildMenuitem(order);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
