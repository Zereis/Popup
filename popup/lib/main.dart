import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the popup dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return _buildPopupDialog(context);
              },
            );
          },
          child: const Text('Show Popup'),
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            const Text(
              'Start your 14-day free trial',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Start Free Trial Button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Start Free Trial',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            // Contact Support Button
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Contact Support',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
            ),
            const SizedBox(height: 20),
            // Terms and Conditions
            TextButton(
              onPressed: () {
                // Open Terms and Conditions
              },
              child: const Text(
                'Terms & conditions',
                style: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
