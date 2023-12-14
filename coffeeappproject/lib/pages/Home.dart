import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.pinkAccent[200],
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Icon(Icons.settings),
          Icon(Icons.device_hub),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: toggleMenu,
              child: const Text('Toggle Menu'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text('Grid Item 1'),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text('Grid Item 2'),
                    ),
                  ),
                ],
              ),
            ),
            if (isMenuOpen)
              Container(
                height: 200,
                color: Colors.yellow,
                child: const Center(
                  child: Text('Menu'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}