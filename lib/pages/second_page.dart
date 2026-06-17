import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // varialve
  int _counter = 0;

  // method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementConter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // =================================================
            // Button 1:
            // Navigate to Third Page
            // =================================================
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              },

              child: const Text("Go To Third Page"),
            ),

            const SizedBox(height: 20),

            // =================================================
            // Button 2:
            // Go back to First Page
            // =================================================
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text("Back To First Page"),
            ),

            const SizedBox(height: 40),

            Text("You pushed the button this many times: "),

            // Counter Value
            Text(_counter.toString(), style: TextStyle(fontSize: 40)),

            ElevatedButton(
              onPressed: _incrementCounter,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),

              child: const Text("Increment", style: TextStyle(fontSize: 40)),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _decrementConter,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
              ),
              child: const Text("Decrement", style: TextStyle(fontSize: 40)),
            ),
          ],
        ),
      ),
    );
  }
}
