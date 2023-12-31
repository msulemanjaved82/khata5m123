// MAde By Sameet
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
          child: Column(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/background.jpg'),
            //     fit: BoxFit.cover,
            //     opacity: 150,
            //   ),
            // ),
            children: [
              SizedBox(
                // height: 190,
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/profile.png',
                        width: 90,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Jaun Elia',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Poet',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            )),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 60, vertical: 18),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 31, 2, 250)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Column(
                        children: [
                          Settings(
                            transIcon: Icons.settings,
                            itemname: 'Settings',
                          ),
                          Settings(
                            transIcon: Icons.info,
                            itemname: 'User Info',
                          ),
                          Settings(
                            transIcon: Icons.pin_end,
                            itemname: 'Terms & Conditions',
                          ),
                          Settings(
                            transIcon: Icons.share,
                            itemname: 'Share',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  final IconData transIcon;
  final String itemname;
  // final String date;
  // final String amount;
  // final Color colorM;
  // final IconButton iconButton;
  const Settings({
    super.key,
    required this.transIcon,
    required this.itemname,
    // required this.date,
    // required this.amount,
    // required this.colorM,
    // required this.iconButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        child: Card(
          elevation: 16,
          child: ListTile(
            leading: Icon(transIcon, size: 30.0),
            title: Text(
              itemname,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            //

            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
