// MAde By Hamza
import 'package:flutter/material.dart';

class AddItems extends StatelessWidget {
  const AddItems({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Leading Icon

        // Tilte
        title: const Text(
          'Add New',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        // More Icons
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Add the new Items According to income and expence',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const DropdownMenuExample(),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter the amount '),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const DropdownMenuExample2(),
            const SizedBox(
              height: 100,
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
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 18),
                child: Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 0, 194)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const List<String> list = <String>['Select the Type', 'Income', 'Expense'];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 300,
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(
          value: value,
          label: value,
        );
      }).toList(),
    );
  }
}

const List<String> list2 = <String>[
  'Select where',
  'Groscary',
  'Office',
  'Home',
  'Market',
  'Stock Exchange',
  'New Item'
];

class DropdownMenuExample2 extends StatefulWidget {
  const DropdownMenuExample2({super.key});

  @override
  State<DropdownMenuExample2> createState() => _DropdownMenuExampleState2();
}

class _DropdownMenuExampleState2 extends State<DropdownMenuExample2> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 300,
      initialSelection: list2.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list2.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(
          value: value,
          label: value,
        );
      }).toList(),
    );
  }
}
