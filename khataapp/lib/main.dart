import 'package:flutter/material.dart';
import 'package:khataapp/lockscreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      debugShowCheckedModeBanner: false,

      // theme: ThemeData.light(useMaterial3: true),
      home: const LockScreenH(),
    );
  }
}
