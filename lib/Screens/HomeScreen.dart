import 'package:flutter/material.dart';
import 'package:navigation/Screens/DisplayScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // To create a text editing controller
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // To change the app bar
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),

      // To change the body
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            // To change the alignment of the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // To Display the text
              Text('Home Screen'),
              // To change the height of the widget
              SizedBox(height: 20),
              // To Display the text field
              TextFormField(
                // To set the text editing controller
                controller: _nameController,
                // To change the style of the text field
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              // To Display the Button
              ElevatedButton(
                // To change the style of the button
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow.shade200,
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  // To check if the text field is empty
                  // If empty, display a snackbar
                  // If not empty, navigate to the DisplayScreen
                  _nameController.text.isEmpty
                      ? ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please enter your name'),
                          ),
                        )
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DisplayScreen(
                              name: _nameController.text,
                            ),
                          ),
                        );
                },
                child: const Text(
                  'Go to Second Screen',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
