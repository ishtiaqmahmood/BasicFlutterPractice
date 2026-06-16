import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      // =====================================================
      // Drawer Navigation
      // =====================================================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            // Drawer Header
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Icon(Icons.flutter_dash, size: 60, color: Colors.white),

                  SizedBox(height: 10),

                  Text(
                    "Flutter Layout App",

                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 20,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // First Page
            ListTile(
              leading: const Icon(Icons.home),

              title: const Text("First Page"),

              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/firstpage');
              },
            ),

            // Second Page
            ListTile(
              leading: const Icon(Icons.looks_two),

              title: const Text("Second Page"),

              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/secondpage');
              },
            ),

            // Third Page
            ListTile(
              leading: const Icon(Icons.looks_3),

              title: const Text("Third Page"),

              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/thirdpage');
              },
            ),

            // Fourth Page
            ListTile(
              leading: const Icon(Icons.looks_4),

              title: const Text("Fourth Page"),

              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/fourthpage');
              },
            ),
          ],
        ),
      ),
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
          ],
        ),
      ),
    );
  }
}
