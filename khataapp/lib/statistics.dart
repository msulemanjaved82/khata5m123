//this is Statistics screen
//i will create this screen- Musab.
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // Leading Icon
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
          // Tilte
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          // More Icons
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
    )
  };
}