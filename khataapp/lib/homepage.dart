// this is home page
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Muhammad Hamza',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 10),
              const Placeholder(
                fallbackHeight: 200,
              ),
              const SizedBox(height: 10),
              const Text(
                'Easy Operations',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.change_circle_outlined,
                                  size: 30,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                ),
                                onPressed: () {},
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Change',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_upward,
                                  size: 30,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                ),
                                onPressed: () {},
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Transfer',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_downward,
                                  size: 30,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                ),
                                onPressed: () {},
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Income',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.receipt_long,
                                  size: 30,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                ),
                                onPressed: () {},
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Receipts',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.menu_book,
                                  size: 30,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                ),
                                onPressed: () {},
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'More',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Previous Transactions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(
                      height: 65,
                      child: Card(
                        child: ListTile(
                          leading: const Icon(Icons.home, size: 30.0),
                          title: const Column(
                            children: [
                              Text(
                                'Rental Income',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '14 July 2023',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          trailing: const Text(
                            'Rs+6500.0',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                          onTap: () {
                            //print('1st transaction tapped');
                            //Navigator.pushNamed(context, TestConfirmation.id);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: Card(
                        child: ListTile(
                          leading:
                              const Icon(Icons.local_grocery_store, size: 30.0),
                          title: const Column(
                            children: [
                              Text(
                                'Grocery Shopping',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '14 Aug 2023',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          trailing: const Text(
                            'Rs-5800.0',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                          onTap: () {
                            //print('1st transaction tapped');
                            //Navigator.pushNamed(context, TestConfirmation.id);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor:
              const Color.fromARGB(255, 0, 0, 0).withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Statistics',
              icon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(Icons.menu_open),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ));
  }
}
