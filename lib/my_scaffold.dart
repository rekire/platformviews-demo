import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget child;
  final String demo;

  const MyScaffold({required this.child, required this.demo, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(demo),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Yep you used the action')));
              },
              icon: const Icon(Icons.developer_mode))
        ],
      ),
      drawer: const Drawer(
        child: Text('Demo Drawer'),
      ),
      body: child,
    );
  }
}
