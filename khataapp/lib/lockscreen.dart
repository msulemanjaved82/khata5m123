// //this is lock screen
// //i will create this screen- sameet
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const KhataApp());
// }

// // KhataApp() {

// class KhataApp extends StatelessWidget {
//   const KhataApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: LockScreen(),
//     );
//   }
// }

// class LockScreen extends StatefulWidget {
//   const LockScreen({super.key});
//   @override
//   _LockScreenState createState() => _LockScreenState();
// }

// class _LockScreenState extends State<LockScreen> {
//   String enteredPasscode = '';
//   String correctPasscode = '1234'; // Replace with your desired passcode

//   void _handleKeyPress(String digit) {
//     setState(() {
//       enteredPasscode += digit;
//     });

//     if (enteredPasscode.length == 4) {
//       _validatePasscode();
//     }
//   }

//   void _validatePasscode() {
//     if (enteredPasscode == 1234) {
//       // Correct passcode, navigate to the home screen or perform an action
//       print('Passcode correct! Unlocking...');
//       // Add your navigation logic here
//     } else {
//       // Incorrect passcode, clear entered passcode
//       print('Incorrect passcode! Try again.');
//       setState(() {
//         enteredPasscode = '';
//       });
//     }
//   }

//   void _clearPasscode() {
//     setState(() {
//       enteredPasscode = '';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Khata App Lock Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Enter Passcode',
//               style: TextStyle(fontSize: 20.0),
//             ),
//             const SizedBox(height: 20.0),
//             _buildPasscodeDisplay(),
//             const SizedBox(height: 20.0),
//             _buildKeypad(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPasscodeDisplay() {
//     return Container(
//       width: 200.0,
//       height: 50.0,
//       decoration: BoxDecoration(
//         border: Border.all(width: 1.0, color: Colors.black),
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       alignment: Alignment.center,
//       child: Text(
//         enteredPasscode,
//         style: const TextStyle(fontSize: 24.0),
//       ),
//     );
//   }

//   Widget _buildKeypad() {
//     return Container(
//       width: 240.0,
//       child: Column(
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               _buildKeypadButton('1'),
//               _buildKeypadButton('2'),
//               _buildKeypadButton('3'),
//             ],
//           ),
//           const SizedBox(height: 10.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               _buildKeypadButton('4'),
//               _buildKeypadButton('5'),
//               _buildKeypadButton('6'),
//             ],
//           ),
//           const SizedBox(height: 10.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               _buildKeypadButton('7'),
//               _buildKeypadButton('8'),
//               _buildKeypadButton('9'),
//             ],
//           ),
//           const SizedBox(height: 10.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               _buildKeypadButton('0'),
//               _buildKeypadButton('C', onPressed: _clearPasscode),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildKeypadButton(String label, {VoidCallback? onPressed}) {
//     return ElevatedButton(
//       onPressed: onPressed != null ? onPressed : () => _handleKeyPress(label),
//       child: Text(label),
//     );
//   }
// }
