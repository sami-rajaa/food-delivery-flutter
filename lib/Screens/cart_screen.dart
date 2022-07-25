import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';

import '../models/order.dart';

class CartScreen extends StatefulWidget {
  static const String id = "Cart screen";

  const CartScreen({Key? key}) : super(key: key);
  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  _buildCart(Order order) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 170.0,
      child: Expanded(
        child: Row(
          children: [
            Container(
              width: 150.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/steak.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Steak',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Salt Marriage Hall',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 100.00,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(width: 0.8, color: Colors.black54),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            '-',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '5',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '+',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: const Text(
                '599 RS',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Cart (4)'),
      ),
      body: ListView.separated(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          Order order = currentUser.cart[index];
          return _buildCart(order);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
      bottomSheet: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.deepOrangeAccent,
        child: const Center(
          child: Text(
            'CHECKOUT',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
