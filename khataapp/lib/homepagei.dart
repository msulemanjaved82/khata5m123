// This is home Screen
// I create this -- Hamza
import 'package:flutter/material.dart';

class HomePageItems extends StatefulWidget {
  const HomePageItems({super.key});

  @override
  State<HomePageItems> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePageItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Muhammad Hamza',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 10),
              Placeholder(
                fallbackHeight: 199,
              ),
              SizedBox(height: 10),
              Text(
                'Easy Operations',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    EasyOperations(
                      icon: Icons.change_circle_outlined,
                      label: 'Change',
                    ),
                    EasyOperations(
                      icon: Icons.arrow_upward,
                      label: 'Transfer',
                    ),
                    EasyOperations(
                      icon: Icons.arrow_downward,
                      label: 'Income',
                    ),
                    EasyOperations(
                      icon: Icons.paste,
                      label: 'Receipt',
                    ),
                    EasyOperations(
                      icon: Icons.read_more,
                      label: 'More',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Text(
                'Previous Transactions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Column(
                children: [
                  PreviousTransactions(
                      transIcon: Icons.shopping_basket,
                      itemname: 'Market',
                      date: '21 Aug 2023',
                      amount: '-3,500',
                      colorM: Colors.red),
                  PreviousTransactions(
                      transIcon: Icons.home_repair_service,
                      itemname: 'Home Appliances',
                      date: '19 Aug 2023',
                      amount: '-9,500',
                      colorM: Colors.red),
                  PreviousTransactions(
                      transIcon: Icons.currency_bitcoin,
                      itemname: 'Trading income',
                      date: '14 Aug 2023',
                      amount: '+15,000',
                      colorM: Colors.blue),
                  PreviousTransactions(
                      transIcon: Icons.car_repair,
                      itemname: 'Car Mantainance',
                      date: '8 Aug 2023',
                      amount: '-5,500',
                      colorM: Colors.red),
                  PreviousTransactions(
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

// Easy Operations constructor
class EasyOperations extends StatelessWidget {
  final IconData icon;
  final String label;
  const EasyOperations({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Card(
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                icon: Icon(
                  icon,
                  size: 30,
                  color: const Color.fromARGB(255, 99, 99, 99),
                ),
                onPressed: () {},
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
        Text(label),
      ],
    );
  }
}

class PreviousTransactions extends StatelessWidget {
  final IconData transIcon;
  final String itemname;
  final String date;
  final String amount;
  final Color colorM;
  const PreviousTransactions({
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
            style: TextStyle(
              fontSize: 20,
              color: colorM,
            ),
          ),
        ),
      ),
    );
  }
}
