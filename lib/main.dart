import 'package:flutter/material.dart';
import 'package:flutter_navigation/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/', name: "home", builder: (context, _) => const MyApp()),
          GoRoute(
              path: '/new',
              name: "new1",
              builder: (context, _) => const NewPage()),
          GoRoute(
              path: '/new2',
              name: "new2",
              builder: (context, _) => const NewPage2()),
        ],
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("navigation"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed("new2");
          },
          child: const Text("Page"),
        ),
      ),
    );
  }
}
