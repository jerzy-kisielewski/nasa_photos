import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          title: const Text(
            "NASA Photos",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () => {Scaffold.of(context).openDrawer()},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            );
          })),
      drawer: Drawer(
        child: SafeArea(
            child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            DrawerHeader(
              child: Text("NASA Photos"),
            )
          ],
        )),
      ),
      body: const Column(
        children: [
          SafeArea(
              child: Center(
            child: SearchBar(
              leading: Icon(Icons.search),
            ),
          )),
        ],
      ),
    ));
  }
}
