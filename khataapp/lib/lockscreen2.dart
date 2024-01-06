// Made By Hamza
import 'package:flutter/material.dart';
import 'package:khataapp/homepage.dart';

class LockScreenH extends StatefulWidget {
  const LockScreenH({super.key});
  @override
  _LockScreenStateH createState() => _LockScreenStateH();
}

class _LockScreenStateH extends State<LockScreenH> {
  String enteredPin = '';

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onUnlockButtonTap() async {
    // Simulating reading the correct PIN from a JSON file
    String correctPin = "1234"; // Replace with actual logic to get correct PIN

    if (enteredPin == correctPin) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      // _scaffoldKey.currentState?.showSnackBar(
      //   SnackBar(
      //     content: Text('Incorrect PIN. Please try again.'),
      //     duration: Duration(seconds: 2),
      //   ),
      // );
      final snackBar = SnackBar(
        content: const Text('Incorrect PIN. Please try again.'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        enteredPin = '';
      });
    }
  }

  Widget _buildPinButton(String text) {
    return InkWell(
      onTap: () => _onPinButtonTap(text),
      child: Container(
        width: 64,
        height: 64,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUnlockButton() {
    return InkWell(
      onTap: _onUnlockButtonTap,
      child: Container(
        width: 64,
        height: 64,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
        child: const Center(
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }

  void _onDeleteButtonTap() {
    setState(() {
      if (enteredPin.isNotEmpty) {
        enteredPin = enteredPin.substring(0, enteredPin.length - 1);
      }
    });
  }

  Widget _buildDeleteButton() {
    return InkWell(
      onTap: _onDeleteButtonTap,
      child: Container(
        width: 64,
        height: 64,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: const Center(
          child: Icon(
            Icons.backspace,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              alignment: AlignmentDirectional.center,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 3,
                  ),
                ),
              ),
              child: Text(
                '*' * enteredPin.length,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPinButton('1'),
                _buildPinButton('2'),
                _buildPinButton('3'),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPinButton('4'),
                _buildPinButton('5'),
                _buildPinButton('6'),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPinButton('7'),
                _buildPinButton('8'),
                _buildPinButton('9'),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //const SizedBox(width: 64, height: 64),
                _buildDeleteButton(),
                _buildPinButton('0'),
                _buildUnlockButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onPinButtonTap(String pin) {
    setState(() {
      if (enteredPin.length < 4) {
        enteredPin += pin;
      }
    });
  }
}
