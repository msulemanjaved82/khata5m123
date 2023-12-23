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
          'All Transactions',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Rs 5,00,000',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                'My Total Earning',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All My Expenses',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              const Column(
                children: [
                  Expenses(
                      transIcon: Icons.shopping_basket,
                      itemname: 'Market',
                      date: '21 Aug 2023',
                      amount: '-3,500',
                      colorM: Colors.red),
                  Expenses(
                      transIcon: Icons.home_repair_service,
                      itemname: 'Home Appliances',
                      date: '19 Aug 2023',
                      amount: '-9,500',
                      colorM: Colors.red),
                  Expenses(
                      transIcon: Icons.currency_bitcoin,
                      itemname: 'Trading loss',
                      date: '14 Aug 2023',
                      amount: '-15,000',
                      colorM: Colors.blue),
                  Expenses(
                      transIcon: Icons.car_repair,
                      itemname: 'Car Mantainance',
                      date: '8 Aug 2023',
                      amount: '-5,500',
                      colorM: Colors.red),
                  Expenses(
                      transIcon: Icons.electric_meter,
                      itemname: 'Electicity Bills',
                      date: '2 Aug 2023',
                      amount: '-60,000',
                      colorM: Colors.blue),
                ],
              ),
              const SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All My Earnings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Income(
                      transIcon: Icons.share,
                      itemname: 'Market Shares',
                      date: '21 Aug 2023',
                      amount: '+3,500',
                      colorM: Colors.red),
                  Income(
                      transIcon: Icons.sell,
                      itemname: 'Land Selling',
                      date: '19 Aug 2023',
                      amount: '+2,55,000',
                      colorM: Colors.red),
                  Income(
                      transIcon: Icons.currency_bitcoin,
                      itemname: 'Trading income',
                      date: '14 Aug 2023',
                      amount: '+15,000',
                      colorM: Colors.blue),
                  Income(
                      transIcon: Icons.currency_bitcoin,
                      itemname: 'Trading',
                      date: '8 Aug 2023',
                      amount: '+90,500',
                      colorM: Colors.red),
                  Income(
                      transIcon: Icons.attach_money,
                      itemname: 'Office Income',
                      date: '2 Aug 2023',
                      amount: '+60,000',
                      colorM: Colors.blue),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Expenses extends StatelessWidget {
  final IconData transIcon;
  final String itemname;
  final String date;
  final String amount;
  final Color colorM;
  const Expenses({
    super.key,
    required this.transIcon,
    required this.itemname,
    required this.date,
    required this.amount,
    required this.colorM,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        elevation: 16,
        child: ListTile(
          leading: Icon(transIcon, size: 30.0),
          title: Column(
            children: [
              Text(
                itemname,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                date,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          trailing: Text(
            'Rs $amount',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class Income extends StatelessWidget {
  final IconData transIcon;
  final String itemname;
  final String date;
  final String amount;
  final Color colorM;
  const Income({
    super.key,
    required this.transIcon,
    required this.itemname,
    required this.date,
    required this.amount,
    required this.colorM,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        elevation: 16,
        child: ListTile(
          leading: Icon(transIcon, size: 30.0),
          title: Column(
            children: [
              Text(
                itemname,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                date,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          trailing: Text(
            'Rs $amount',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
