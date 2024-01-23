import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("navigation"),
        ),
        body: homeBody(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
          ],
          currentIndex: index,
          onTap: (newIndex) => setState(() {
            index = newIndex;
          }),
        ),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 0:
        return Center(child: Icon(Icons.home, size: 100,));
      case 1:
        return Center(child: Icon(Icons.search, size: 100,));
      case 2:
        return Center(child: Icon(Icons.person, size: 100,));
      default:
        return Center(child: Icon(Icons.home, size: 100,));
    }
  }
}
