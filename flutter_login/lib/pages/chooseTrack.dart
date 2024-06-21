import 'package:flutter/material.dart';

class ChooseTrack extends StatelessWidget {
  const ChooseTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CodeCraft"),
          backgroundColor: Color.fromARGB(255, 9, 150, 107),
        ),
         body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Problem Description
              Text(
                'Problem: Calculate the sum of two numbers.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16), // Add spacing

              // Code Editor (TextField for simplicity)
              TextField(
                maxLines: null, // Allow multiline input
                decoration: InputDecoration(
                  hintText: 'Write your code here...',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 16), // Add spacing

              // Run Button
              ElevatedButton(
                onPressed: () {
                  // Implement your code execution logic here
                  // For example, calculate the sum of two numbers
                  // and display the result.
                  // You can update a result variable and show it below.
                },
                child: Text('Run'),
              ),

              SizedBox(height: 16), // Add spacing

              // Display Results (You can replace this with your actual result)
              Text(
                'Result: 42', // Example result (replace with actual result)
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}