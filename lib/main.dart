import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_page.dart';
import 'package:flutter_app/pages/second_page.dart';
import 'package:flutter_app/pages/third_page.dart';
import 'package:flutter_app/pages/fourth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeController(),
    );
  }
}

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =========================
      // APP BAR
      // =========================
      appBar: AppBar(title: const Text("Flutter App")),

      // =========================
      // DRAWER NAVIGATION
      // =========================
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("First Page"),
              onTap: () {
                Navigator.pop(context);
                changePage(0);
              },
            ),

            ListTile(
              leading: const Icon(Icons.looks_two),
              title: const Text("Second Page"),
              onTap: () {
                Navigator.pop(context);
                changePage(1);
              },
            ),

            ListTile(
              leading: const Icon(Icons.looks_3),
              title: const Text("Third Page"),
              onTap: () {
                Navigator.pop(context);
                changePage(2);
              },
            ),

            ListTile(
              leading: const Icon(Icons.looks_4),
              title: const Text("Fourth Page"),
              onTap: () {
                Navigator.pop(context);
                changePage(3);
              },
            ),
          ],
        ),
      ),

      // =========================
      // BODY (SWITCH PAGES)
      // =========================
      body: pages[currentIndex],

      // =========================
      // BOTTOM NAVIGATION
      // =========================
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          changePage(index);
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Third"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_4), label: "Fourth"),
        ],
      ),
    );
  }
}
