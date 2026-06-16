import 'package:flutter/material.dart';
import 'fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
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
