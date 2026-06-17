import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth page")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // =================================================
            // Button 1:
            // Go back to Third Page
            // =================================================
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back to Third page"),
            ),
          ],
        ),
      ),
    );
  }
}
