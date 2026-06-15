import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 125, 132, 172),
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: const Color.fromARGB(255, 75, 83, 124),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  "Ishtiaq Mahmood",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Icon(Icons.favorite, color: Colors.white, size: 64),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
