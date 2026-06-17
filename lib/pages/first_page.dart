import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =====================================================
      // APP BAR
      // =====================================================
      appBar: AppBar(title: const Text("Flutter Layout Demo")),

      // =====================================================
      // BODY (SCROLL FIXED HERE)
      // =====================================================
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
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

              title("Center"),

              Container(
                height: 150,
                color: Colors.grey,
                child: Center(
                  child: Container(height: 70, width: 70, color: Colors.red),
                ),
              ),

              gap(),

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

              title("Row"),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [box(), box(), box()],
              ),

              gap(),

              title("Column"),

              Column(children: [box(), const SizedBox(height: 10), box()]),

              gap(),

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

              title("Card"),

              Card(
                elevation: 5,
                child: SizedBox(
                  height: 100,
                  child: Center(child: Text("Card Widget")),
                ),
              ),

              gap(),

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
  // REUSABLE WIDGETS
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
