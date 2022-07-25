import 'package:flutter/material.dart';

import '../Screens/restaurants_screen.dart';
import '../data/data.dart';

class NearbyRestuarants extends StatefulWidget {
  const NearbyRestuarants({Key? key}) : super(key: key);

  @override
  NearbyRestuarantsState createState() => NearbyRestuarantsState();
}

class NearbyRestuarantsState extends State<NearbyRestuarants> {
  _buildNearbyRestaurants() {
    List<Widget> nearbyRestaurantsList = [];
    for (var restaurant in restaurants) {
      nearbyRestaurantsList.add(
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RestaurantsScreen.id);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(width: 0.8, color: Colors.grey),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    height: 150.0,
                    width: 150.0,
                    image: AssetImage(restaurant.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant.name,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        const Text('👏👏👏👏👏'),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          restaurant.address,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        const Text(
                          '0.5 miles away',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Column(
      children: nearbyRestaurantsList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nearby Restaurants',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w600,
            ),
          ),
          _buildNearbyRestaurants(),
        ],
      ),
    );
  }
}
