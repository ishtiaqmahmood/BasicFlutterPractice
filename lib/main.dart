import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Root application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 125, 132, 172),

        // App Bar section
        appBar: AppBar(
          title: const Text("Flutter Layout Demo"),
          backgroundColor: const Color.fromARGB(255, 75, 83, 124),
          elevation: 0,

          // Left side icon
          leading: const Icon(Icons.menu),

          // Right side actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          ],
        ),

        // Main screen content
        body: ListView(
          padding: const EdgeInsets.all(16),

          children: [
            // ============================================================
            // COLUMN LAYOUT
            // Column arranges widgets vertically (top -> bottom)
            // ============================================================
            const Text(
              "Column Layout",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Box 1
                Container(
                  height: 150,
                  width: 150,
                  color: const Color.fromARGB(255, 16, 19, 20),
                ),

                const SizedBox(height: 10),

                // Box 2
                Container(height: 150, width: 150, color: Colors.deepOrange),

                const SizedBox(height: 10),

                // Box 3
                Container(height: 150, width: 150, color: Colors.brown),
              ],
            ),

            const SizedBox(height: 30),

            // ============================================================
            // STACK LAYOUT
            // Stack places widgets on top of each other
            // Last widget appears above previous widgets
            // ============================================================
            const Text(
              "Stack Layout",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 400,
              width: double.infinity,

              child: Stack(
                alignment: Alignment.center,

                children: [
                  // Background box
                  Container(
                    height: 350,
                    width: 350,
                    color: const Color.fromARGB(255, 141, 69, 27),
                  ),

                  // Middle box
                  Container(height: 250, width: 250, color: Colors.deepOrange),

                  // Top box
                  Container(height: 150, width: 150, color: Colors.brown),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ============================================================
            // ROW LAYOUT
            // Row arranges widgets horizontally (left -> right)
            // ============================================================
            const Text(
              "Row Layout",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  // Box 1
                  Container(
                    height: 150,
                    width: 150,
                    color: const Color.fromARGB(255, 11, 26, 34),
                  ),

                  const SizedBox(width: 10),

                  // Box 2
                  Container(height: 150, width: 150, color: Colors.deepOrange),

                  const SizedBox(width: 10),

                  // Box 3
                  Container(height: 150, width: 150, color: Colors.brown),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
