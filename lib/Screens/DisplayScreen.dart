import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  // Initialize the name variable
  final String name;

  // Constructor to receive the name
  const DisplayScreen({
    super.key,
    // To get the name from the text field
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Screen'),
      ),
      body: Padding(
        // To change the padding of the body
        padding: const EdgeInsets.all(10.0),
        // To change the alignment of the children
        child: Center(
          child: Column(
            // To change the alignment of the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Display Screen'),
              const SizedBox(height: 20),
              Text(
                // To display the name
                'Hello $name',
                // To change the style of the text
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
