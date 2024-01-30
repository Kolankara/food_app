import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_app/Pages/Cartscreen.dart';

class TableData {
  final int tableNumber;
  final int numberOfPersons;

  TableData({required this.tableNumber, required this.numberOfPersons});
}

class TableSelectionPage extends StatefulWidget {
  @override
  _TableSelectionPageState createState() => _TableSelectionPageState();
}

class _TableSelectionPageState extends State<TableSelectionPage> {
  final FirebaseFirestore tables = FirebaseFirestore.instance;
  final FirebaseFirestore cartItems = FirebaseFirestore.instance;
  int? selectedTableNumber;
  int? selectedNumberOfPersons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Selection'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<int>(
              value: selectedTableNumber,
              onChanged: (value) {
                setState(() {
                  selectedTableNumber = value;
                });
              },
              items: List.generate(10, (index) {
                int tableNumber = index + 1;
                return DropdownMenuItem<int>(
                  value: tableNumber,
                  child: Text('Table $tableNumber'),
                );
              }),
            ),
            SizedBox(height: 16.0),
            DropdownButton<int>(
              value: selectedNumberOfPersons,
              onChanged: (value) {
                setState(() {
                  selectedNumberOfPersons = value;
                });
              },
              items: List.generate(10, (index) {
                int numberOfPersons = index + 1;
                return DropdownMenuItem<int>(
                  value: numberOfPersons,
                  child: Text('$numberOfPersons persons'),
                );
              }),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveTable,
              child: Text('Save Table'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }

  void _saveTable() async {
    if (selectedTableNumber == null || selectedNumberOfPersons == null) {
      // Check if both table number and number of persons are selected
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select table number and number of persons.')),
      );
      Navigator.pushNamed(context, CartScreen.routename,arguments: {
          'tableNumber': selectedTableNumber,
          'numberOf persons': selectedNumberOfPersons,
        },
      );
      return;
    }

    try {
      await tables.collection('cartItems').add({
        'tableNumber': selectedTableNumber,
        'numberOfPersons': selectedNumberOfPersons,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Table saved successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save table.')),
      );
    }
  }
}

