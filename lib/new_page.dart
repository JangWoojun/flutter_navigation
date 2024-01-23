import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("new page2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            child: const Text("Back"),
            onPressed: () {
              context.pop();
            },
          ),
          TextButton(
            child: const Text("page2"),
            onPressed: () {
              context.pushNamed("new2");
            },
          )
        ]),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("new page2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            child: const Text("Back"),
            onPressed: () {
              context.pop();
            },
          ),
          TextButton(
            child: const Text("home"),
            onPressed: () {
              context.goNamed("home");
            },
          ),
        ]),
      ),
    );
  }
}
