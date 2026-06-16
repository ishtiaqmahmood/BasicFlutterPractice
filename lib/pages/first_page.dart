import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =====================================================
      // AppBar
      // =====================================================
      appBar: AppBar(title: const Text("Flutter Layout Demo")),

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

      // =====================================================
      // Body
      // =====================================================
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // =====================================================
              // 1. Container
              // =====================================================
              title("Container"),

              Container(
                height: 100,

                width: double.infinity,

                alignment: Alignment.center,

                decoration: BoxDecoration(
                  color: Colors.blue,

                  borderRadius: BorderRadius.circular(15),
                ),

                child: const Text(
                  "Container Box",

                  style: TextStyle(color: Colors.white),
                ),
              ),

              gap(),

              // =====================================================
              // 2. Center
              // =====================================================
              title("Center"),

              Container(
                height: 150,

                color: Colors.grey,

                child: Center(
                  child: Container(height: 70, width: 70, color: Colors.red),
                ),
              ),

              gap(),

              // =====================================================
              // 3. Align
              // =====================================================
              title("Align"),

              Container(
                height: 150,

                color: Colors.black12,

                child: Align(
                  alignment: Alignment.bottomRight,

                  child: Container(height: 60, width: 60, color: Colors.green),
                ),
              ),

              gap(),

              // =====================================================
              // 4. Row
              // =====================================================
              title("Row"),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [box(), box(), box()],
              ),

              gap(),

              // =====================================================
              // 5. Column
              // =====================================================
              title("Column"),

              Column(children: [box(), const SizedBox(height: 10), box()]),

              gap(),

              // =====================================================
              // 6. Expanded
              // =====================================================
              title("Expanded"),

              SizedBox(
                height: 100,

                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.red)),

                    Expanded(child: Container(color: Colors.blue)),

                    Expanded(child: Container(color: Colors.green)),
                  ],
                ),
              ),

              gap(),

              // =====================================================
              // 7. Flexible
              // =====================================================
              title("Flexible"),

              Row(
                children: [
                  Flexible(
                    flex: 2,

                    child: Container(height: 80, color: Colors.orange),
                  ),

                  Flexible(
                    flex: 1,

                    child: Container(height: 80, color: Colors.purple),
                  ),
                ],
              ),

              gap(),

              // =====================================================
              // 8. Stack
              // =====================================================
              title("Stack"),

              SizedBox(
                height: 200,

                child: Stack(
                  alignment: Alignment.center,

                  children: [
                    Container(height: 180, width: 180, color: Colors.blue),

                    Container(height: 100, width: 100, color: Colors.yellow),
                  ],
                ),
              ),

              gap(),

              // =====================================================
              // 9. Wrap
              // =====================================================
              title("Wrap"),

              Wrap(
                spacing: 10,

                runSpacing: 10,

                children: [
                  chip("Flutter"),

                  chip("Dart"),

                  chip("Firebase"),

                  chip("Android"),

                  chip("iOS"),
                ],
              ),

              gap(),

              // =====================================================
              // 10. GridView
              // =====================================================
              title("GridView"),

              SizedBox(
                height: 300,

                child: GridView.count(
                  crossAxisCount: 2,

                  crossAxisSpacing: 10,

                  mainAxisSpacing: 10,

                  children: [gridBox(), gridBox(), gridBox(), gridBox()],
                ),
              ),

              gap(),

              // =====================================================
              // 11. Card
              // =====================================================
              title("Card"),

              Card(
                elevation: 5,

                child: SizedBox(
                  height: 100,

                  child: Center(child: Text("Card Widget")),
                ),
              ),

              gap(),

              // =====================================================
              // 12. AspectRatio
              // =====================================================
              title("AspectRatio"),

              AspectRatio(
                aspectRatio: 16 / 9,

                child: Container(
                  color: Colors.teal,

                  child: const Center(
                    child: Text("16:9", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================
  // Reusable Widgets
  // =====================================================

  Widget title(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),

      child: Text(
        text,

        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget box() {
    return Container(height: 70, width: 70, color: Colors.blue);
  }

  Widget chip(String text) {
    return Chip(label: Text(text));
  }

  Widget gridBox() {
    return Container(
      color: Colors.indigo,

      child: const Center(
        child: Text("Grid", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget gap() {
    return const SizedBox(height: 30);
  }
}
