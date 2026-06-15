import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutDemoApp());
}

class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Layout Master Demo")),

        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // =====================================================
                // 1. Container
                // Basic box layout
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
                // Places child in the center
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
                // Control exact child position
                // =====================================================
                title("Align"),

                Container(
                  height: 150,

                  color: Colors.black12,

                  child: Align(
                    alignment: Alignment.bottomRight,

                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.green,
                    ),
                  ),
                ),

                gap(),

                // =====================================================
                // 4. Row
                // Horizontal layout
                // =====================================================
                title("Row"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [box(), box(), box()],
                ),

                gap(),

                // =====================================================
                // 5. Column
                // Vertical layout
                // =====================================================
                title("Column"),

                Column(children: [box(), const SizedBox(height: 10), box()]),

                gap(),

                // =====================================================
                // 6. Expanded
                // Takes remaining available space
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
                // Flexible size allocation
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
                // Overlapping widgets
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
                // Automatically moves items to next line
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
                // Grid based layout
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
                // Material design container
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
                // Keeps width/height ratio
                // =====================================================
                title("AspectRatio"),

                AspectRatio(
                  aspectRatio: 16 / 9,

                  child: Container(
                    color: Colors.teal,

                    child: const Center(
                      child: Text(
                        "16:9",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ===============================
  // Reusable widgets
  // ===============================

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
