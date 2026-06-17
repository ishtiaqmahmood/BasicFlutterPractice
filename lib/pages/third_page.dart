import 'package:flutter/material.dart';
import 'fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // =================================================
            // Button 1:
            // Navigate to Fourth Page
            // =================================================
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthPage()),
                );
              },
              child: const Text('Go to Fourth page'),
            ),

            const SizedBox(height: 20),

            // =================================================
            // Button 2:
            // Go back to Second Page
            // =================================================
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Second page"),
            ),
          ],
        ),
      ),
    );
  }
}
